extends Spatial

var sky = preload("res://Assets/sky.tres")

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _process(delta):
	sky.sun_latitude += 0.1
	if sky.sun_latitude == 180:
		sky.sun_latitude = -180


func _on_Area_mouse_entered():
	print("highlight : true")

func _on_Area_mouse_exited():
	print("highlight : false")
