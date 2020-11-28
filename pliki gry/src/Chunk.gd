extends Node2D

var nr = Array()
onready var size_x = get_viewport().size.x
onready var size_y = get_viewport().size.y
onready var path_granica_1 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_1")
onready var path_granica_2 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_2")
onready var path_granica_3 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_3")
onready var path_granica_4 = get_tree().get_root().get_node("Gra").get_node("Gracz").get_node("granica_4")
onready var path_chunki = get_tree().get_root().get_node("Gra").get_node("chunki")

func _ready():
	pass 

func gen():
	pass

func _on_strefa_area_entered(area):
	if(area==path_granica_1 or area==path_granica_2 or area==path_granica_3 or area==path_granica_4):
		gen()
		var scena_chunk = load("res://src/Chunk.tscn")
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
			
			
			
			
			
			
			


