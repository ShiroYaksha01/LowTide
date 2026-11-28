extends CharacterBody2D

@export var travel_left := 75.0
@export var travel_right := 64.0

@onready var _origin := global_position.x


func slide_by(distance: float) -> float:
	var previous_x := global_position.x
	var next_x := clampf(previous_x + distance, _origin - travel_left, _origin + travel_right)
	move_and_collide(Vector2(next_x - previous_x, 0.0), false, 0.01)
	return global_position.x - previous_x
