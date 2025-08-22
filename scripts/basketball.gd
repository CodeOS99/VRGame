extends XRToolsPickable


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.balls.append(self)
	for child in get_children():
		var grab_point := child as XRToolsGrabPoint
		if grab_point:
			_grab_points.push_back(grab_point)
