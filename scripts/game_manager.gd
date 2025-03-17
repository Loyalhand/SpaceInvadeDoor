extends Node

@onready var SignalBus = $"/root/SignalBus"
var player_score = 0

func _ready():
	SignalBus.has_destroyed_enemy.connect(on_has_destroyed_enemy)
	

func on_has_destroyed_enemy(score_value):
	player_score += score_value
