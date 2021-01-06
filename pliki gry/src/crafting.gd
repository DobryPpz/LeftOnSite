extends Node

var item_types

func check():
	zawart_ekwipunku.sloty[3][0][0] = null
	zawart_ekwipunku.sloty[3][0][1] = 0
	get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Produkt/Sprite").set_texture(null)
	get_tree().get_root().get_node("Gra/Gracz/Ekwipunek/Produkt/Label").set_text("")
	if(item_types["res://grafika_otoczenie/patyki.png"] == 1 and item_types["res://grafika_otoczenie/kamienie.png"] == 1):
		#craftuj kilof
		zawart_ekwipunku.sloty[3][0][0] = "res://grafika_crafting/kilof_kamien.png"
		zawart_ekwipunku.sloty[3][0][1] = 1
	if(item_types["res://grafika_otoczenie/patyki.png"] == 1 and item_types["res://grafika_otoczenie/kamienie.png"] == 2):
		zawart_ekwipunku.sloty[3][0][0] = "res://grafika_crafting/siekiera_kamien.png"
		zawart_ekwipunku.sloty[3][0][1] = 1
	

func _ready():
	item_types = {
		"res://grafika_otoczenie/patyki.png" : 0,
		"res://grafika_otoczenie/kamienie.png" : 0
	}
