extends Node2D


func _ready():
	position = position + Vector2(-256,-160)
	#tutaj odbywa się rozrysowywanie co gdzie leży i w jakiej ilości
	for i in range(0,5):
		if(zawart_ekwipunku.sloty[1][i][0] != null):
			#$Pasek_grid.get_child(i).get_child(1).Texture = load(zawart_ekwipunku.sloty[1][i][0])
			#$Pasek_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[1][i][0]))
			$Pasek_grid.get_child(i).get_child(1).set_texture(load(zawart_ekwipunku.sloty[1][i][0]))
			$Pasek_grid.get_child(i).get_child(1).position += Vector2(24,24)
			$Pasek_grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[1][i][1]))
			print(zawart_ekwipunku.sloty[1][i][0])

