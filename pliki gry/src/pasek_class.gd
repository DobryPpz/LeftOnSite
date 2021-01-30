extends Node
class_name pasek_class

var nr

func _ready():
	pass 

func _pressed():
	for i in range(0,5):
		get_parent().get_parent().get_child(i).get_child(1).visible = false
	get_parent().get_parent().get_child(nr).get_child(1).visible = true
	
