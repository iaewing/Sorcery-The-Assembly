extends Polygon2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var mountain = get_node('Mountain');
	mountain.card_tapped.connect(_on_card_tapped);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_card_tapped(cardType, data):
	parseCard(cardType, data);

func parseCard(cardType, data):
	if (cardType == 'land'):
		print('you tapped a land, nice');
		if (data.has('red')):
			print('oh sick, its a mountain');
