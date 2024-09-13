extends Node3D

@export var max_health: int = 5
@onready var base_health: Label3D = $Label3D

func _ready() -> void:
	base_health.text = str(max_health)

func take_damage() -> void:
	print("Damage dealt to base!")
	max_health -= 1
	base_health.text = str(max_health)
