class_name FarmPlot

var pos = Vector2()
var _rb:CollisionObject


func _init(position:Vector2, rigidbody):
	pos = position 
	_rb = rigidbody
	_rb.transform.basis = Vector3(pos.x, 0, pos.y)
	
	
func _to_string():
	return "%s : %s" % [pos.x, pos.y]
