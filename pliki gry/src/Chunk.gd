extends Node2D

var nr = Array()

var rng = RandomNumberGenerator.new()

onready var size_x = get_viewport().size.x
onready var size_y = get_viewport().size.y

onready var tilemap_size_x = size_x/($TileMap.cell_size.x)
onready var tilemap_size_y = size_y/($TileMap.cell_size.y)

onready var path_granica_1 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_1")
onready var path_granica_2 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_2")
onready var path_granica_3 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_3")
onready var path_granica_4 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_4")
onready var path_chunki = get_tree().get_root().get_node("Gra").get_node("chunki")

onready var scena_patykow = load("res://src/Patyk.tscn")
onready var scena_kamieni = load("res://src/Kamien.tscn")
onready var scena_chunk = load("res://src/Chunk.tscn")

func _ready():
	rng.randomize()

func gen():
	for i in range(0,tilemap_size_y):
		for j in range(0,tilemap_size_x):
			$TileMap.set_cell(j,i,0)
	var ile_patykow = rng.randi_range(0,1)
	var ile_kamieni = rng.randi_range(0,1)
	for i in range(0,ile_patykow):
		var node = scena_patykow.instance()
		node.position = Vector2(rng.randi_range(32,size_x-32),rng.randi_range(32,size_y-32))
		$patyki.add_child(node)
	for i in range(0,ile_kamieni):
		var node = scena_kamieni.instance()
		node.position = Vector2(rng.randi_range(32,size_x-32),rng.randi_range(32,size_y-32))
		$kamienie.add_child(node)
			
func _on_strefa_area_entered(area):
	if(area==path_granica_1 or area==path_granica_2 or area==path_granica_3 or area==path_granica_4):
		gen()
		if(not([nr[0],nr[1]-1] in auto_load.nr_chunk)):
			auto_load.nr_chunk.append([nr[0],nr[1]-1])
			var node = scena_chunk.instance()
			node.nr = [nr[0],nr[1]-1]
			node.position = Vector2(self.position.x,self.position.y-size_y)
			path_chunki.add_child(node)
			print("liczba chunków: ",auto_load.nr_chunk.size())
		if(not([nr[0],nr[1]+1] in auto_load.nr_chunk)):
			auto_load.nr_chunk.append([nr[0],nr[1]+1])
			var node = scena_chunk.instance()
			node.nr = [nr[0],nr[1]+1]
			node.position = Vector2(self.position.x,self.position.y+size_y)
			path_chunki.add_child(node)
			print("liczba chunków: ",auto_load.nr_chunk.size())
		if(not([nr[0]-1,nr[1]] in auto_load.nr_chunk)):
			auto_load.nr_chunk.append([nr[0]-1,nr[1]])
			var node = scena_chunk.instance()
			node.nr = [nr[0]-1,nr[1]]
			node.position = Vector2(self.position.x-size_x,self.position.y)
			path_chunki.add_child(node)
			print("liczba chunków: ",auto_load.nr_chunk.size())
		if(not([nr[0]+1,nr[1]] in auto_load.nr_chunk)):
			auto_load.nr_chunk.append([nr[0]+1,nr[1]])
			var node = scena_chunk.instance()
			node.nr = [nr[0]+1,nr[1]]
			node.position = Vector2(self.position.x+size_x,self.position.y)
			path_chunki.add_child(node)
			print("liczba chunków: ",auto_load.nr_chunk.size())
			
			
			
			
			
			
			


