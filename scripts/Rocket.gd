extends Node2D

const SPEED = 2000
var damage = 10

func _physics_process(delta):
	position += (Vector2.RIGHT * SPEED).rotated(rotation) * delta

func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
	
func _on_hitbox_area_entered(area):
	queue_free()
