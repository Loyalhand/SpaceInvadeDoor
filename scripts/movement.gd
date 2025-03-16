extends Node2D


func _ready():
	$MoveTimerForward.start()

func _on_move_timer_forward_timeout():
	global_position.y += 64
	$MoveTimerRight.start() 

func _on_move_timer_right_timeout():
	global_position.x += 64
	if global_position.x <= 658:
		$MoveTimerRight.start()
	else:
		$MoveTimerLeft.start()
	
func _on_move_timer_left_timeout():
	global_position.x -= 64
	if global_position.x >= 0:
		$MoveTimerLeft.start()
	else: 
		$MoveTimerForward.start()

func _on_spawn_timer_timeout():
	const ARROW = preload("res://scenes/arrow.tscn")
	var arrow_instance = ARROW.instantiate()
