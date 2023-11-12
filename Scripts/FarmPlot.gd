extends Spatial
class_name FarmPlot

#var farmPlotScene = preload("res://Scenes/FarmPlot.tscn")

export var pos : Vector3

var default_color : Color = Color.blue
var highlight_color : Color = Color.red

var plotInstance 

func _init(position : Vector3):
	set_pos(position)

func _ready():
	print("test")
#	plotInstance = farmPlotScene.instance()
#	$".".add_child(plotInstance)
	highlight(false)

func set_pos(position : Vector3):
	pos = position
	transform.basis = position

func _to_string():
	return "%s : %s" % [pos.x, pos.y]


func highlight(state : bool):
	var material = $MeshInstance.get("material")
	if state == true:
		material.set("albedo_color", highlight_color)
		print("highlight : true")
	else:
		material.set("albedo_color", default_color)
		print("highlight : false")
	$MeshInstance.set("material", material)


func _on_Area_mouse_entered():
	print("highlight : true")
	highlight(true)


func _on_Area_mouse_exited():
	print("highlight : false")
	highlight(false)


func _on_Area_body_entered(_body):
	print("highlight : true")
	highlight(true)


func _on_Area_body_exited(_body):
	print("highlight : false")
	highlight(false)
