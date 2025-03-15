extends Sprite2D

var health: int = 10
var can_shoot: bool = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	
	pass

func shoot():
	const BEAM = preload("res://scenes/beam.tscn")
	var beam_instance = BEAM.instantiate()
	beam_instance.rotation_degrees = rotation_degrees - 90
	beam_instance.global_position = global_position
	add_sibling(beam_instance)

func _on_hurt_box_health_depleted():
	queue_free()

func _on_fire_rate_timeout():
	$FireRate.wait_time = randf_range(0,5)
	shoot()
