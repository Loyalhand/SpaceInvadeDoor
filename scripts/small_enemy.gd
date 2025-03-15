extends Sprite2D
@onready var game_manager = %GameManager

var health: int = 10
var score_value := 10

func shoot():
	const BEAM = preload("res://scenes/beam.tscn")
	var beam_instance = BEAM.instantiate()
	beam_instance.rotation_degrees = rotation_degrees - 90
	beam_instance.global_position = global_position
	add_sibling(beam_instance)

func _on_hurt_box_health_depleted():
	game_manager.player_score += score_value
	queue_free()

func _on_fire_rate_timeout():
	$FireRate.wait_time = randf_range(0,5)
	shoot()
