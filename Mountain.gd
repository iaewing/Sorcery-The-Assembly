extends 'res://Card.gd'

# Called when the node enters the scene tree for the first time.
func _ready():
	_init()

func _init():
	isTapped = false
	health = null
	attack = null
	cardType = 'land'

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
