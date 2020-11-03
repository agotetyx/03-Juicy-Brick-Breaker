extends ColorRect

onready var HUD = get_node("/root/Game/HUD")
var c = 0
var colors = [
	Color8(0,0,0)			#black
	,Color8(33,37,41)		#gray 9
	,Color8(52,58,64)		#gray 8
	,Color8(33,37,41)		#gray 9
]


func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()


func update_color():
	if HUD.color_background:
		$Color.color = Color8(4,100,171)
	else:
		color = Color(0,0,0,1)

func _on_HUD_changed():
	update_color()
