extends Control


func _on_Button1_pressed():
	queue_free()
	print("Button yes pressed")
	
func _on_Button2_pressed():
	queue_free()
	print("Button no pressed")
