extends Node


var PlotBoughtsMap = [[0,0,0],[0,1,0],[0,0,0]]
var PlotsBoughtArray = [Plot.new(Vector2(6,4), false)]

func _isPlotBought(plotPos:Vector2):
	return PlotBoughtsMap[plotPos.x][plotPos.y] == 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
