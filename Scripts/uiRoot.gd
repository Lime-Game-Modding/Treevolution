extends Control

onready var cashManager = find_parent("Root").find_node("CashManager")
onready var Player = find_parent("Root").find_node("Player")

func _process(_delta):
	if Input.is_action_just_pressed("addCash"):
		cashManager.changeCash(100)
	elif Input.is_action_just_pressed("subCash"):
		cashManager.changeCash(-100)
