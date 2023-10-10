extends Panel


@onready var backgroundSprite: Sprite2D = $"background inventory"
@onready var itemSprite: Sprite2D = $CenterContainer/Panel/items

func update(item: InventoryItem):
	if !item:
		backgroundSprite.frame = 0
		itemSprite.visible = false
	else:
		backgroundSprite.frame = 1
		itemSprite.visible = true
		itemSprite.texture = item.texture
