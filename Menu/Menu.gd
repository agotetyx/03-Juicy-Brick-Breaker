extends Control




func _on_Play_pressed():
	get_tree().change_scene("res://Game.tscn")
	Global.level = 1


func _on_Quit_pressed():
	get_tree().quit()
