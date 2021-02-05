extends Node2D

onready var timer = $Timer

func _on_Area2D_body_entered(body):
	set_process(true)


func _on_Area2D_body_exited(body):
	set_process(false)


func _on_Timer_timeout():
	#zainstancjonuj scenę "zelazo" i dodaj ją jako dziecko węzła zelazo w grze
	#usuń ten węzeł
	var node = load("res://src/Zelazo.tscn")
	node = node.instance()
	node.position = position
	get_tree().get_root().get_node("Gra/zelazo").add_child(node)
	queue_free()


func _ready():
	set_process(false)
	timer.set_autostart(false)
	timer.set_one_shot(true)
	timer.set_wait_time(3)

func _process(delta):
	#jeśli trzymany jest kilof to kop
	if(zawart_ekwipunku.sloty[1][auto_load.pasek_wybrany][0] == "res://grafika_crafting/kilof_kamien.png" and auto_load.wybrano_flag == true):
		if(Input.is_action_pressed("f")):
			if(timer.is_stopped()):
				timer.start()
		else:
			timer.stop()
			timer.set_wait_time(3)
			



