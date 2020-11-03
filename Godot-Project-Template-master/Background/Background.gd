extends ColorRect

onready var HUD = get_node("/root/Game/HUD")

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()


func update_color():
	if HUD.color_background:
		$Color.color = Color8(231,245,255)
	else:
		$Color.color = Color8(33,37,41)

func _on_HUD_changed():
	update_color()
