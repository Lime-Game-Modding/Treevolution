class_name Plot

var Size = Vector2()
var TopleftCoordinate = Vector2()
var FarmSquareArray = [[]]


func _init(size:Vector2, _loading:bool):
	Size = size
	TopleftCoordinate = Vector2(-size.x*5, size.y*10 )
	for i in range(size.x):
		for j in range(size.y):
			var plot = FarmPlot.new(Vector2(i,j))
			FarmSquareArray[i][j] = plot
	pass

