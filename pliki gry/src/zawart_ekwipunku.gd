extends Node

#sloty[0] : sloty główne
#sloty[1] : sloty paska szybkiego dostępu
#sloty[2] : sloty craftingu

var sloty = Array()

func _ready():
	sloty.append(Array())
	sloty.append(Array())
	sloty.append(Array())
	for i in range(0,15):
		sloty[0].append([null,0])
	for i in range(0,5):
		sloty[1].append([null,0])
	for i in range(0,4):
		sloty[2].append([null,0])
