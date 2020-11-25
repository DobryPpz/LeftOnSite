extends Node2D



func _ready():
	get_node("Chunk_up").position = get_node("Chunk_up").position + Vector2(0,-get_viewport().size.y)
	get_node("Chunk_up").nr = [0,-1]
	auto_load.nr_chunk.append([0,-1])
	get_node("Chunk_down").position = get_node("Chunk_down").position + Vector2(0,get_viewport().size.y)
	get_node("Chunk_down").nr = [0,1]
	auto_load.nr_chunk.append([0,1])
	get_node("Chunk_left").position = get_node("Chunk_left").position + Vector2(-get_viewport().size.x,0)
	get_node("Chunk_left").nr = [-1,0]
	auto_load.nr_chunk.append([-1,0])
	get_node("Chunk_right").position = get_node("Chunk_right").position + Vector2(get_viewport().size.x,0)
	get_node("Chunk_right").nr = [1,0]
	auto_load.nr_chunk.append([1,0])
	
	
