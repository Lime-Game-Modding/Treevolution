class_name Plot

export var Size: Vector2
export var TopleftCoordinate: Vector2
var FarmSquareArray : Array = []


func _init(size:Vector2, _loading:bool):
	Size = size
	FarmSquareArray.resize(size.x)
	TopleftCoordinate = Vector2(-size.x*5, size.y*10 )
	FarmSquareArray.resize(size.x)
	for i in range(size.x):
		var yArray = []
		for j in range(size.y):
			var plot = FarmPlot.new(Vector3(i, 0, j))
			yArray.append(plot)
		FarmSquareArray[i] = yArray
