extends Node2D

@onready var _player = $Player
@onready var _dummy: Area2D = $PracticeEnemy
@onready var _flash: Timer = $PracticeEnemy/FlashTimer
@onready var _status: Label = %Status

var _hits := 0
var _pogos := 0


func _ready() -> void:
	_player.sprite.animation_changed.connect(_update_status)
	_update_status()


func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed(&"practice_reset"):
		get_tree().reload_current_scene()
	elif Input.is_action_just_pressed(&"practice_hurt"):
		_player.take_hit()


func _on_target_hit(target: Area2D, pogo: bool) -> void:
	if target != _dummy:
		return
	_hits += 1
	if pogo:
		_pogos += 1
	_dummy.modulate = Color(1.6, 1.6, 1.6)
	_flash.start()
	_update_status()


func _on_dummy_flash_finished() -> void:
	_dummy.modulate = Color.WHITE


func _update_status() -> void:
	_status.text = "Animation: %s    Hits: %d    Pogos: %d" % [_player.sprite.animation, _hits, _pogos]
