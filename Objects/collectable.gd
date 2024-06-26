extends Area2D
@export var itemTres: InventoryItem
@export var resourceInventory: inventoryResource

var inBounds = false

signal item_pickup_attempted

func _on_body_entered(body):
	if body.name == "Mochi":
		inBounds = true

func _on_body_exited(body):
	if body.name == "Mochi":
		inBounds = false

	
func _input(event):
	if event.is_action_pressed("pickupItem") and inBounds:
		queue_free()
		print(itemTres.name)
