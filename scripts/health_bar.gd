extends ProgressBar
@onready var player = $"../.."

func _ready():
	value = player.health

func _process(_delta):
	value = player.health
