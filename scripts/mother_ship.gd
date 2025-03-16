extends Enemy
@onready var firing_point = $FiringPoint
@onready var player = %Player


func laser():
	firing_point.look_at(player.position)
	
	const ENEMY_LASER = preload("res://scenes/enemy_laser.tscn")
	var laser_instance = ENEMY_LASER.instantiate()
	laser_instance.global_position = firing_point.global_position
	laser_instance.rotation_degrees = firing_point.rotation_degrees - 180
	add_sibling(laser_instance)


func _on_laser_timer_timeout():
	laser()
