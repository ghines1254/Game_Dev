extends Control

signal opened
signal closed
var isOpen: bool = false;

@onready var inventory: inventoryResource = preload("playerInventoryResource.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

func _ready():
	update()

func update():
	for i in range(min(inventory.items.size(), slots.size())):
		slots[i].update(inventory.items[i]) 

func open():
	visible = true
	isOpen = true
	opened.emit()
	
func close():
	visible = false
	isOpen = false
	closed.emit()
	


func _on_quit_pressed():
	get_tree().quit()
