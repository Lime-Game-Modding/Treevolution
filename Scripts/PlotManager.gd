extends Node


var PlotBoughtsMap = [[0,0,0],[0,1,0],[0,0,0]]
var PlotsBoughtArray = [Plot.new(Vector2(6,4), false)]

func _isPlotBought(plotPos:Vector2):
	return PlotBoughtsMap[plotPos.x][plotPos.y] == 1
