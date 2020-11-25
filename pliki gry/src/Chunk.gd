extends Node2D

var nr = Array()

func _ready():
	pass 

func gen():
	pass

func _on_strefa_area_entered(area):
	#gen()
	if(not([nr[0],nr[1]-1] in auto_load.nr_chunk)):
		pass
	if(not([nr[0],nr[1]+1] in auto_load.nr_chunk)):
		pass
	if(not([nr[0]-1,nr[1]] in auto_load.nr_chunk)):
		pass
	if(not([nr[0]+1,nr[1]] in auto_load.nr_chunk)):
		pass
