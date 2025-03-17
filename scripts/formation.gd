extends Node2D

func _on_spawn_timer_timeout():
	const ARROW = preload("res://scenes/level_1.tscn")
	var arrow_instance = ARROW.instantiate()
	arrow_instance.global_position = position
	$Movement.add_child(arrow_instance)
