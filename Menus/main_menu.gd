extends Control


@onready var transition = $Transition
var tutorialRoom = preload("res://scenes/world.tscn")

@onready var songfade = $Song_Fade


func _ready():
	$MarginContainer/VBoxContainer/Buttons/Start.grab_focus()

func _on_start_pressed():
	transition.play("fade_out")
	songfade.play("sound_fade_out")
	
func _on_transition_animation_finished(anim_name):
	get_tree().change_scene_to_packed(tutorialRoom)

func _on_options_pressed():
	pass # Replace with function body.


func _on_end_pressed():
	get_tree().quit()
	songfade.play("sound_fade_out")
	

	
	




