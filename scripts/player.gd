extends CharacterBody2D

const SPEED = 300.0
var health = 100
var screen_size_x

func _ready():
	screen_size_x = get_viewport().get_visible_rect().size.x

func _physics_process(_delta):
	
	position.x = clamp(position.x, 0, screen_size_x) 
	

	var direction = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	if Input.is_action_just_pressed("shoot"):
		shoot()
	
	#print(health)
	
func shoot():
	const BEAM = preload("res://scenes/beam.tscn")
	var beam_instance = BEAM.instantiate()
	beam_instance.global_position = global_position
	add_sibling(beam_instance)


func _on_hurt_box_health_depleted():
	get_tree().reload_current_scene()
