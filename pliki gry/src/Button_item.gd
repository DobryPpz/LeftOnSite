extends Button
class_name Button_item

var info

func _ready():
	pass # Replace with function body.


func _pressed():
	print(info)
	if(auto_load.jest_trzymane):
		if(zawart_ekwipunku.sloty[info[0]][info[1]][0] == null):
			pass
			#umieść item w slocie
			#przerysuj ekwipunek
			auto_load.jest_trzymane = false
	else:
		if(zawart_ekwipunku.sloty[info[0]][info[1]][0] != null):
			pass
			#podnieś item
			#przerysuj ekwipunek
			auto_load.jest_trzymane = true
			var scena_item = load("res://src/Item.tscn")
			scena_item = scena_item.instance()
			scena_item.position = get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").get_local_mouse_position()
			scena_item.get_node("Panel").get_node("Sprite").set_texture(load(zawart_ekwipunku.sloty[info[0]][info[1]][0]))
			scena_item.get_node("Panel").get_node("Sprite").position += Vector2(24,24)
			scena_item.get_node("Panel").get_node("Label").set_text(str(zawart_ekwipunku.sloty[info[0]][info[1]][1]))
			scena_item.info = info
			get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").add_child(scena_item)
