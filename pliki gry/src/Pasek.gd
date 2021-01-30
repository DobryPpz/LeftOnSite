extends Node2D


func _ready():
	position += Vector2(-128,180)
	for i in range(0,5):
		if(zawart_ekwipunku.sloty[1][i][0] != null):
			$grid.get_child(i).get_child(0).set_texture(load(zawart_ekwipunku.sloty[1][i][0]))
			$grid.get_child(i).get_child(0).position += Vector2(24,24)
			$grid.get_child(i).get_child(2).set_text(str(zawart_ekwipunku.sloty[1][i][1]))
		$grid.get_child(i).get_child(1).position += Vector2(24,24)
		$grid.get_child(i).get_child(1).visible = false
