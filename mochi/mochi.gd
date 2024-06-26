extends CharacterBody2D

@export var speed: int = 600
@export var inventory: inventoryResource
@onready var animations = $AnimationPlayer

func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection*speed
	
func updateAnimation():
	if velocity.length() == 0:
		animations.stop()
	else:
		var direction = "_down"
		if velocity.x < 0: direction = "_left"
		elif velocity.x > 0: direction = "_right"
		elif velocity.y < 0: direction = "_up"
		
		animations.play("walk" + direction)
	
func _physics_process(delta):
	handleInput()
	move_and_slide()
	updateAnimation()
