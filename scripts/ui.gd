extends Control
@onready var game_manager = %GameManager
@onready var score = $Score

var points = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if game_manager.player_score != points:
		points = game_manager.player_score
		score.text = "Score: " + str(points)
		
