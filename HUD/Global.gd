extends Node

var HUD = null

#onready var Camera1 = get_node("/root/Game/Camera")
#onready var Camera2 = get_node("/root/Game/HUD/Camera")
#onready var WE = get_node("/root/Game/WorldEnvironment")

var level = 1
var score = 0

func change_level():
	if level == 1:
		level = 2
		get_tree().change_scene("res://Menu/Win.tscn")
	if  level == 2:
		level = 3
		get_tree().change_scene("res://Menu/Win2.tscn")
	if level == 3:
		#level = 
		get_tree().change_scene("res://Menu/Win3.tscn")	

func _process(_delta):
	
	if HUD == null:
		HUD = get_node_or_null("/root/Game/HUD")
	#onready var HUD = get_node("/root/Game/HUD")
	if Input.is_action_just_pressed("menu"):
		
		if HUD != null:
			if HUD.visible:
				HUD.hide()
				#Camera2.current = false
				#Camera1.current = true
				#WE.show()
			else:
				HUD.show()
				#Camera1.current = false
				#Camera2.current = true
				#WE.hide()
