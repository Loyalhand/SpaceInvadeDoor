extends Node2D
@onready var game_manager = %GameManager

var score = 0

#func _process(_delta):
	#print(get_child_count())
	#game_manager.player_score += score
	#if get_child_count() <= 4:
		#queue_free()
	
func _on_move_timer_forward_timeout():
	global_position.x += 8 
