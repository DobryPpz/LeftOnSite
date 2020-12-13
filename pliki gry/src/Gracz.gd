extends KinematicBody2D

var ekwipunek_flag : bool = false

func _ready():
	position = Vector2(get_viewport().size/2)

func _physics_process(delta):
#	if(ekwipunek_flag):
#		if(Input.is_action_pressed("q")):
#			ekwipunek_flag = false
#			print(get_child(7).free())
	if(Input.is_action_pressed("up")):
		move_and_slide(Vector2(0,-180))
	if(Input.is_action_pressed("down")):
		move_and_slide(Vector2(0,180))
	if(Input.is_action_pressed("left")):
		move_and_slide(Vector2(-180,0))
	if(Input.is_action_pressed("right")):
		move_and_slide(Vector2(180,0))
	if(Input.is_action_just_pressed("q")):
		if(!ekwipunek_flag):#otwieram ekwipunek
			var ekwipunek = load("res://src/Ekwipunek.tscn")
			ekwipunek = ekwipunek.instance()
			get_parent().get_node("Gracz").add_child(ekwipunek)
			ekwipunek_flag = true
		else:
			ekwipunek_flag = false
			get_child(7).free()#zamykam ekwipunek
			
