extends Node2D

func _process(_delta):
	if get_child_count() <= 0:
		queue_free()
	if position.y > 1152:
		queue_free()
