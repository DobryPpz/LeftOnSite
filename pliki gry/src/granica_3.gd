extends Area2D



func _ready():
	position = position + Vector2(-get_viewport().size.x/2,get_viewport().size.y/2)
