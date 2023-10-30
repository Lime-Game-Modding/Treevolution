extends Node

func _notification(what):
	if what == NOTIFICATION_WM_QUIT_REQUEST:
		close()
	elif what == NOTIFICATION_WM_GO_BACK_REQUEST:
		close()
	elif what == NOTIFICATION_CRASH:
		# Open Crash Handler
		close()
	

func close():
	get_tree().quit() # Default Behaviour, if there is anything to be saved, save it now!
