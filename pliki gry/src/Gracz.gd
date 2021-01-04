extends KinematicBody2D

var ekwipunek_flag : bool = false

func _ready():
	position = Vector2(get_viewport().size/2)

func _physics_process(delta):
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
			get_parent().get_node("Gracz").get_node("Pasek").free()
			ekwipunek_flag = true
		else:#zamykam ekwipunek
			ekwipunek_flag = false
			auto_load.jest_trzymane = false
			get_parent().get_node("Gracz").get_node("Ekwipunek").free()
			var pasek = load("res://src/Pasek.tscn")
			pasek = pasek.instance()
			get_parent().get_node("Gracz").add_child(pasek)
			#get_child(7).free()#zamykam ekwipunek
			
