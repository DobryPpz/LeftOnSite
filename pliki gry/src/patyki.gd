extends Node

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	var scena_patykow = load("res://src/Patyk.tscn")
	var ile_sztuk = rng.randi_range(1,5)
	for i in range(1,ile_sztuk+1):
		var node = scena_patykow.instance()
		node.position = Vector2(rng.randi_range(1,get_viewport().size.x),rng.randi_range(1,get_viewport().size.y))
		add_child(node)
	



