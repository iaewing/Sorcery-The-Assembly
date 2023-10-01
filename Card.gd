extends MarginContainer

const ROTATION_TIME = 0.2;

var isTapped = false
var health = null
var attack = null
var cardType = 'land'
var initialRotation = rotation;

# Called when the node enters the scene tree for the first time.
func _ready():
	_init()

func _init():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if Input.is_action_pressed("click_card"):
		if (isTapped):
			untap()
		if (!isTapped):
			tap()

func setRotation():
	initialRotation = rotation;
	isTapped = !isTapped;

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
