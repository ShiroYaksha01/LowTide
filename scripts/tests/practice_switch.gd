extends Area2D

var active := false

@onready var _lamp_animation: AnimationPlayer = $LampAnimation


func interact() -> void:
	active = not active
	_lamp_animation.play(&"lamp_on" if active else &"lamp_off")
