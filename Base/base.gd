extends Node3D

@export var max_health: int = 5

var current_health: int:
	set(health_in):
		current_health = health_in
		print("health was changed")
		base_health.text = str(current_health)
		if current_health < 1:
			get_tree().reload_current_scene()
		
@onready var base_health: Label3D = $Label3D



func _ready() -> void:
	current_health = max_health

func take_damage() -> void:
	print("Damage dealt to base!")
	current_health -= 1
