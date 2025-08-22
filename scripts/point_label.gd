extends Label

func _process(delta: float) -> void:
	text = "Points: " + str(Globals.points)
