extends CharacterBody2D

signal target_hit(target: Area2D, pogo: bool)

const Pushable = preload("res://scripts/player/pushable_body.gd")

@export var run_speed := 250.0
@export var sprint_speed := 400.0
@export var jump_speed := 520.0
@export var rebound_speed := 555.0
@export var gravity := 1275.0
@export var swim_speed := Vector2(180.0, 235.0)
@export var grab_speed := 72.0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var _reach: Area2D = $InteractionReach
@onready var _water: Area2D = $WaterProbe
@onready var _hook_cast: ShapeCast2D = $HookReach
@onready var _up_cast: ShapeCast2D = $UpReach
@onready var _down_cast: ShapeCast2D = $DownReach
@onready var _hook_offset: float = _hook_cast.position.x

var _action: StringName = &""
var _hook_queued := false
var _hit_this_swing := false
var _interaction: Area2D
var _held_body: Pushable


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed(&"player_hook", false, true):
		_hook_queued = true


func _physics_process(delta: float) -> void:
	var move := Input.get_axis(&"player_left", &"player_right")
	var up := Input.is_action_pressed(&"player_jump")
	var down := Input.is_action_pressed(&"player_down")
	var wants_hook := _hook_queued
	_hook_queued = false

	if _water.has_overlapping_areas() and _action != &"hurt":
		_action = &""
		_interaction = null
		_held_body = null
		_face(move)
		velocity = Vector2(move, float(down) - float(up)).limit_length() * swim_speed
		move_and_slide()
		_play(&"swim")
		return

	var grounded := is_on_floor()
	var wants_jump := Input.is_action_just_pressed(&"player_jump")
	velocity.y += gravity * delta
	if _action != &"hurt":
		var sprint := Input.is_action_pressed(&"player_sprint")
		velocity.x = move * (sprint_speed if sprint else run_speed)
		if _action == &"" or _action == &"land":
			_face(move)

		if wants_hook and _can_hook():
			_held_body = null
			_hit_this_swing = false
			var clip := &"hook_use"
			if down:
				clip = &"slash_down"
			elif up:
				clip = &"slash_up"
			_start_action(clip)
		elif wants_jump and grounded and _action != &"interact":
			_held_body = null
			velocity.y = -jump_speed
			if _action == &"land":
				_action = &""
		elif grounded and _action == &"":
			if Input.is_action_just_pressed(&"player_interact"):
				_begin_interaction()
			elif Input.is_action_pressed(&"player_grab"):
				_move_held_body(move, delta)
			else:
				_held_body = null
		else:
			_held_body = null

	if _action == &"interact":
		velocity.x = 0.0
		if is_instance_valid(_interaction) and sprite.frame >= 2:
			_interaction.call(&"interact")
			_interaction = null

	var vertical_speed := velocity.y
	move_and_slide()
	_check_swing()
	if _action == &"" and not grounded and is_on_floor() and vertical_speed > 100.0:
		_start_action(&"land")
	if _action == &"" and _held_body == null:
		_play_locomotion()


func take_hit() -> void:
	if _action == &"hurt":
		return
	_held_body = null
	_interaction = null
	velocity = Vector2(150.0 if sprite.flip_h else -150.0, -190.0)
	_start_action(&"hurt")


func _can_hook() -> bool:
	return _action == &"" or _action == &"land" or (_action == &"pogo" and velocity.y > 0.0)


func _face(direction: float) -> void:
	if not is_zero_approx(direction):
		sprite.flip_h = direction < 0.0
		_hook_cast.position.x = -_hook_offset if sprite.flip_h else _hook_offset


func _move_held_body(move: float, delta: float) -> void:
	if not is_instance_valid(_held_body) or not _reach.overlaps_body(_held_body):
		_held_body = null
		var nearest_distance := INF
		for body in _reach.get_overlapping_bodies():
			var distance := absf(body.global_position.x - global_position.x)
			if body is Pushable and distance < nearest_distance:
				nearest_distance = distance
				_held_body = body
	if _held_body == null:
		return

	var crate_side := signf(_held_body.global_position.x - global_position.x)
	_face(crate_side)
	velocity.x = _held_body.slide_by(move * grab_speed * delta) / delta
	if is_zero_approx(velocity.x):
		_play(&"idle")
	else:
		_play(&"push" if move * crate_side > 0.0 else &"pull")


func _begin_interaction() -> void:
	var nearest_distance := INF
	for area in _reach.get_overlapping_areas():
		var distance := global_position.distance_squared_to(area.global_position)
		if area.has_method(&"interact") and distance < nearest_distance:
			nearest_distance = distance
			_interaction = area
	if is_instance_valid(_interaction):
		_held_body = null
		_face(_interaction.global_position.x - global_position.x)
		_start_action(&"interact")


func _check_swing() -> void:
	if _hit_this_swing:
		return
	var reach: ShapeCast2D
	match _action:
		&"hook_use":
			if sprite.frame < 2:
				return
			reach = _hook_cast
		&"slash_up":
			reach = _up_cast
		&"slash_down":
			reach = _down_cast
		_:
			return
	reach.force_shapecast_update()
	for index in range(reach.get_collision_count()):
		var target := reach.get_collider(index) as Area2D
		if target == null:
			continue
		var pogo := _action == &"slash_down" and not is_on_floor()
		if pogo and (velocity.y <= 0.0 or global_position.y > target.global_position.y):
			continue
		_hit_this_swing = true
		if pogo:
			velocity.y = -rebound_speed
			_start_action(&"pogo")
		target_hit.emit(target, pogo)
		return


func _play_locomotion() -> void:
	if not is_on_floor():
		_play(&"jump" if velocity.y < 0.0 else &"fall")
	elif absf(velocity.x) > 0.1:
		_play(&"run", 1.35 if Input.is_action_pressed(&"player_sprint") else 1.0)
	else:
		_play(&"idle")


func _play(clip: StringName, rate := 1.0) -> void:
	if sprite.animation != clip or (sprite.is_playing() and not is_equal_approx(sprite.get_playing_speed(), rate)):
		sprite.play(clip, rate)


func _start_action(clip: StringName) -> void:
	_action = clip
	sprite.stop()
	sprite.play(clip)


func _on_animation_finished() -> void:
	if sprite.animation == _action:
		_action = &""
		_interaction = null
