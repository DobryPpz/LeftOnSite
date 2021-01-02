extends Button
class_name Button_item

var info

func _ready():
	pass # Replace with function body.


func _pressed():
	print(info)
	if(auto_load.jest_trzymane):
		if(zawart_ekwipunku.sloty[info[0]][info[1]][0] == null):
			#umieść item w slocie
			#usuń item z poprzedniego slotu
			#przerysuj ekwipunek
			auto_load.jest_trzymane = false
			
			var scena_item = get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Item")
			
			zawart_ekwipunku.sloty[info[0]][info[1]][0] = scena_item.path
			zawart_ekwipunku.sloty[info[0]][info[1]][1] = scena_item.info[2]
			get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").get_child(1+info[0]).get_child(info[1]).get_node("Sprite").position += Vector2(24,24)
			
			zawart_ekwipunku.sloty[scena_item.info[0]][scena_item.info[1]][0] = null
			zawart_ekwipunku.sloty[scena_item.info[0]][scena_item.info[1]][1] = 0
			get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").get_child(1+scena_item.info[0]).get_child(scena_item.info[1]).get_node("Sprite").texture = null
			get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").get_child(1+scena_item.info[0]).get_child(scena_item.info[1]).get_node("Sprite").position += Vector2(-24,-24)
			get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").get_child(1+scena_item.info[0]).get_child(scena_item.info[1]).get_node("Label").set_text("")
			
			scena_item.free()
			
			get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").rysuj()
	else:
		if(zawart_ekwipunku.sloty[info[0]][info[1]][0] != null):
			pass
			#podnieś item
			#przerysuj ekwipunek
			auto_load.jest_trzymane = true
			var scena_item = load("res://src/Item.tscn")
			scena_item = scena_item.instance()
			scena_item.position = get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").get_local_mouse_position()
			scena_item.get_node("Sprite").set_texture(load(zawart_ekwipunku.sloty[info[0]][info[1]][0]))
			scena_item.get_node("Sprite").position += Vector2(24,24)
			scena_item.get_node("Label").set_text(str(zawart_ekwipunku.sloty[info[0]][info[1]][1]))
#			scena_item.info = info
			scena_item.info.append(info[0])#sekcja slotów
			scena_item.info.append(info[1])#numer slotu
			scena_item.info.append(zawart_ekwipunku.sloty[info[0]][info[1]][1])#ilość
			scena_item.path = zawart_ekwipunku.sloty[info[0]][info[1]][0]#ścieżka do pliku
			get_tree().get_root().get_node("Gra/Gracz/Ekwipunek").add_child(scena_item)
			#print(get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Item").name)
