extends 'res://Card.gd'

# Called when the node enters the scene tree for the first time.
func _ready():
	_init()
	tap()

func _init():
	isTapped = false
	health = null
	attack = null
	cardType = 'land'


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setRotation():
	initialRotation = rotation;
	isTapped = !isTapped;
	print(isTapped);

func tap():
	if (!isTapped):
		var tween = create_tween();
		tween.tween_property(self, "rotation", initialRotation - PI/2, ROTATION_TIME);
		tween.finished.connect(setRotation);
	
func untap():
	if (isTapped):
		var tween = get_tree().create_tween();
		tween.tween_property(self, "rotation", initialRotation + PI/2, ROTATION_TIME);
		tween.finished.connect(setRotation);
