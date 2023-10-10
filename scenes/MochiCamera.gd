extends Camera2D

var player

func _ready():
	player= get_node("/root/Scene/Icon")
	

func _process(delta):
	position.x=player.position.x
	position.y=player.position.y
