extends MarginContainer

var isTapped = false
var health = null
var attack = null
var cardType = 'land'

# Called when the node enters the scene tree for the first time.
func _ready():
	_init()
	pass

func _init():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("click_card"):
		if (isTapped):
			untap()
		if (!isTapped):
			tap()

func tap():
	if (!isTapped):
		rotation = rotation - PI/2
	
func untap():
	if (isTapped):
		rotation = rotation + PI/2
