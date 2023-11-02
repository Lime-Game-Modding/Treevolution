class_name FarmPlot

var pos = Vector2()

func _init(position:Vector2):
	pos = position

func _to_string():
	return "%s : %s" % [pos.x, pos.y]
