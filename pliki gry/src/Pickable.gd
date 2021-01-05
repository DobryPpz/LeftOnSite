extends Node
class_name Pickable

var path_texture

func _on_Area2D_body_entered(body):
	set_process(true)

func _on_Area2D_body_exited(body):
	set_process(false)

func _ready():
	set_process(false)
	
func szukaj_miejsca():
	for i in range(0,5):
		if(zawart_ekwipunku.sloty[1][i][0] == null or zawart_ekwipunku.sloty[1][i][0] == path_texture):
			return [1,i]
	for i in range(0,15):
		if(zawart_ekwipunku.sloty[0][i][0] == null or zawart_ekwipunku.sloty[0][i][0] == path_texture):
			return [0,i]
	return null

func _process(delta):
	if(Input.is_action_pressed("space")):
		var miejsce = szukaj_miejsca()
		if(miejsce != null):
			zawart_ekwipunku.sloty[miejsce[0]][miejsce[1]][0] = path_texture
			zawart_ekwipunku.sloty[miejsce[0]][miejsce[1]][1] += 1
			get_tree().get_root().get_node("Gra/Gracz/Pasek").free()
			var pasek = load("res://src/Pasek.tscn")
			pasek = pasek.instance()
			get_tree().get_root().get_node("Gra/Gracz").add_child(pasek)
#			print(zawart_ekwipunku.sloty[miejsce[0]][miejsce[1]][0]," ",zawart_ekwipunku.sloty[miejsce[0]][miejsce[1]][1])
			free()
		#tutaj odbywa się dodanie itema do ekwipunku
		#czyli mając dostęp do autoloada zawartości ekwipunku
		#możemy sprawdzić gdzie jest pierwsze wolne miejsce
		#w tym autoloadzie i wysłać do odpowiedniego miejsca
		#path_texture tego itema a nastepnie zwiększyć licznik tego itema
		#Potem, gdy ekwipunek jest odświeżany(otwierany) wykorzystane zostaną
		#informacje z autoloada żeby rozrysować co gdzie leży i w jakiej ilości
