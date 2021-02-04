extends Node

var item_types

func check():
	zawart_ekwipunku.sloty[3][0][0] = null
	zawart_ekwipunku.sloty[3][0][1] = 0
	get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Produkt/Sprite").set_texture(null)
	get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Produkt/Label").set_text("")
	if(item_types["res://grafika_otoczenie/patyki.png"] == 1 and item_types["res://grafika_otoczenie/kamienie.png"] == 1):
		#craftuj kilof kamienny
#		for i in range(0,4):
#			if(zawart_ekwipunku.sloty[2][i][0] == "res://grafika_otoczenie/patyki.png"):
#				zawart_ekwipunku.sloty[2][i][1] -= 1
#				if(zawart_ekwipunku.sloty[2][i][1] == 0):
#					zawart_ekwipunku.sloty[2][i][0] = null
#					item_types["res://grafika_otoczenie/patyki.png"] -= 1
#				break
#		for i in range(0,4):
#			if(zawart_ekwipunku.sloty[2][i][0] == "res://grafika_otoczenie/kamienie.png"):
#				zawart_ekwipunku.sloty[2][i][1] -= 1
#				if(zawart_ekwipunku.sloty[2][i][1] == 0):
#					zawart_ekwipunku.sloty[2][i][0] = null
#					item_types["res://grafika_otoczenie/kamienie.png"] -= 1
#				break
		zawart_ekwipunku.sloty[3][0][0] = "res://grafika_crafting/kilof_kamien.png"
		zawart_ekwipunku.sloty[3][0][1] = 1
	if(item_types["res://grafika_otoczenie/patyki.png"] == 1 and item_types["res://grafika_otoczenie/kamienie.png"] == 2):
		#craftuj siekiere kamienną
		zawart_ekwipunku.sloty[3][0][0] = "res://grafika_crafting/siekiera_kamien.png"
		zawart_ekwipunku.sloty[3][0][1] = 1
	get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Produkt/Sprite").position = get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Produkt/Button").rect_position + Vector2(24,24)
	#get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Produkt/Button").visible = true
	
func czysc():
	for i in range(0,4):
		if(zawart_ekwipunku.sloty[2][i][0] != null):
			item_types[zawart_ekwipunku.sloty[2][i][0]] -= 1
			zawart_ekwipunku.sloty[2][i][1] -= 1
			if(zawart_ekwipunku.sloty[2][i][1] == 0):
				zawart_ekwipunku.sloty[2][i][0] = null
				get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Crafting_grid").get_child(i).get_node("Sprite").texture = null
				get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Crafting_grid").get_child(i).get_node("Sprite").position += Vector2(-24,-24)
				get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Crafting_grid").get_child(i).get_node("Label").set_text("")
				
		
	
func _ready():
	item_types = {
		"res://grafika_otoczenie/patyki.png" : 0,
		"res://grafika_otoczenie/kamienie.png" : 0
	}
