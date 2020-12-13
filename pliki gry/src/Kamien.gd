extends Node2D

var tag = "kamien"
var path_texture = "res://src/grafika_otoczenie/kamienie.png"

func _on_Area2D_body_entered(body):
	set_process(true)

func _on_Area2D_body_exited(body):
	set_process(false)

func _ready():
	set_process(false)

func _process(delta):
	if(Input.is_action_pressed("space")):
		free()
		#tutaj odbywa się dodanie itema do ekwipunku




