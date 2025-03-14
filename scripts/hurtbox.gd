class_name HurtBox
extends Area2D

@onready var parent = $".."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(hitbox: HitBox):
	take_damage(hitbox)


func take_damage(hitbox: HitBox):
	parent.health -= hitbox.damage
	pass
	
