extends Node2D

func rysuj_produkt():
	if(zawart_ekwipunku.sloty[3][0][0] != null):
		$Produkt.get_child(1).set_texture(load(zawart_ekwipunku.sloty[3][0][0]))
		$Produkt.get_child(1).position += Vector2(24,24)
		$Produkt.get_child(2).set_text(str(zawart_ekwipunku.sloty[3][0][1]))

func rysuj():
	for i in range(0,5):
		if(zawart_ekwipunku.sloty[1][i][0] != null):
			$Pasek_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[1][i][0]))
			$Pasek_grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[1][i][1]))
	for i in range(0,15):
		if(zawart_ekwipunku.sloty[0][i][0] != null):
			$Ekwipunek_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[0][i][0]))
			$Ekwipunek_grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[0][i][1]))
	for i in range(0,4):
		if(zawart_ekwipunku.sloty[2][i][0] != null):
			$Crafting_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[2][i][0]))
			$Crafting_grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[2][i][1]))
	for i in range(0,1):
		if(zawart_ekwipunku.sloty[3][i][0] != null):
			$Produkt.get_child(1).set_texture(load(zawart_ekwipunku.sloty[3][i][0]))
			$Produkt.get_child(2).set_text(str(zawart_ekwipunku.sloty[3][i][1]))

func _ready():
	position = position + Vector2(-256,-160)
	#tutaj odbywa się rozrysowywanie co gdzie leży i w jakiej ilości
	for i in range(0,5):
		if(zawart_ekwipunku.sloty[1][i][0] != null):
			$Pasek_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[1][i][0]))
			$Pasek_grid.get_child(i).get_child(1).position += Vector2(24,24)
			$Pasek_grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[1][i][1]))
	for i in range(0,15):
		if(zawart_ekwipunku.sloty[0][i][0] != null):
			$Ekwipunek_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[0][i][0]))
			$Ekwipunek_grid.get_child(i).get_child(1).position += Vector2(24,24)
			$Ekwipunek_grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[0][i][1]))
	for i in range(0,4):
		if(zawart_ekwipunku.sloty[2][i][0] != null):
			$Crafting_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[2][i][0]))
			$Crafting_grid.get_child(i).get_child(1).position += Vector2(24,24)
			$Crafting_grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[2][i][1]))
	for i in range(0,1):
		if(zawart_ekwipunku.sloty[3][i][0] != null):
			$Produkt.get_child(1).set_texture(load(zawart_ekwipunku.sloty[3][i][0]))
			$Produkt.get_child(1).position += Vector2(24,24)
			$Produkt.get_child(2).set_text(str(zawart_ekwipunku.sloty[3][i][1]))


