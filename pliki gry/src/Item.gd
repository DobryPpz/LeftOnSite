extends Node2D

var info = Array()
var path

func _ready():
	set_process(true)
	
func _process(delta):
	#position = get_viewport().get_mouse_position() + Vector2(-256,-160)
	position = get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").get_local_mouse_position() + Vector2(-24,-24)

