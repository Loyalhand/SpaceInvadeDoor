class_name Enemy
extends Sprite2D
@onready var game_manager = %GameManager

@export var health: int = 0
@export var score_value := 0
@export var fire_rate_min = 0
@export var fire_rate_max = 0


func shoot():
	const BEAM = preload("res://scenes/enemy_rocket.tscn")
	var beam_instance = BEAM.instantiate()
	beam_instance.rotation_degrees = rotation_degrees - 90
	beam_instance.global_position = global_position
	add_sibling(beam_instance)

func _on_hurt_box_health_depleted():
	game_manager.player_score += score_value
	queue_free()

func _on_fire_rate_timeout():
	$FireRate.wait_time = randf_range(fire_rate_min, fire_rate_max)
	shoot()
