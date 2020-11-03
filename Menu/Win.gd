extends Control


onready var global = get_node("/root/Global")


	

func _on_Quit_pressed():
	get_tree().quit()




	


func _on_Play_pressed():
	global.score = 0
	get_tree().change_scene("res://Level/Level2.tscn")
