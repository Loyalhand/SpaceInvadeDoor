extends Node2D
@onready var game_manager = %GameManager

var score = 0 

func _process(_delta):
	game_manager.player_score = score

func _on_spawn_timer_timeout():
	const ARROW = preload("res://scenes/arrow.tscn")
	var arrow_instance = ARROW.instantiate()
	arrow_instance.global_position = position
	$Movement.add_sibling(arrow_instance)
