extends Node
class_name pasek_class

var nr

func _ready():
	pass 

func _pressed():
	for i in range(0,5):
		get_parent().get_parent().get_child(i).get_child(1).visible = false
	get_parent().get_parent().get_child(nr).get_child(1).visible = true
	auto_load.pasek_wybrany = nr
#	if(zawart_ekwipunku.sloty[1][nr][0] != null):
#		get_tree().get_root().get_node("Gra/Gracz/trzymane").set_texture(load(zawart_ekwipunku.sloty[1][nr][0]))
#		if(auto_load.wybrano_flag == false):
#			get_tree().get_root().get_node("Gra/Gracz/trzymane").scale = Vector2(0.5,0.5)
#			get_tree().get_root().get_node("Gra/Gracz/trzymane").position += Vector2(0,40)
#			auto_load.wybrano_flag = true
#	else:
#		get_tree().get_root().get_node("Gra/Gracz/trzymane").set_texture(null)
	if(zawart_ekwipunku.sloty[1][nr][0] != null):
		#dodaj do węzła "animacje" scenę konkretnej animacji
		if(get_tree().get_root().get_node("Gra/Gracz/animacje").get_child_count() != 0):
			get_tree().get_root().get_node("Gra/Gracz/animacje").get_child(0).free()
		if(zawart_ekwipunku.sloty[1][nr][0] == "res://grafika_crafting/kilof_kamien.png"):
			var node = load("res://src/Animacja_kilof_kamien.tscn")
			node = node.instance()
			get_tree().get_root().get_node("Gra/Gracz/animacje").add_child(node)
			get_tree().get_root().get_node("Gra/Gracz/animacje").get_child(0).position += Vector2(0,40)
			get_tree().get_root().get_node("Gra/Gracz/animacje").get_child(0).scale = Vector2(0.5,0.5)
		if(zawart_ekwipunku.sloty[1][nr][0] == "res://grafika_crafting/siekiera_kamien.png"):
			var node = load("res://src/Animacja_siekiera_kamien.tscn")
			node = node.instance()
			get_tree().get_root().get_node("Gra/Gracz/animacje").add_child(node)
			get_tree().get_root().get_node("Gra/Gracz/animacje").get_child(0).position += Vector2(0,40)
			get_tree().get_root().get_node("Gra/Gracz/animacje").get_child(0).scale = Vector2(0.5,0.5)
	else:
		if(get_tree().get_root().get_node("Gra/Gracz/animacje").get_child_count() != 0):
			get_tree().get_root().get_node("Gra/Gracz/animacje").get_child(0).free()
