extends XRToolsPickable

var was_in_air: bool = true

func _ready() -> void:
	Globals.balls.append(self)
	for child in get_children():
		var grab_point := child as XRToolsGrabPoint
		if grab_point:
			_grab_points.push_back(grab_point)

func _process(delta: float) -> void:
	if linear_velocity.y > 0:
		was_in_air = true

func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.is_in_group("Court") and was_in_air:
		$BallBounce.play()
		was_in_air = false

func _on_dropped(pickable: Variant) -> void:
	$BallThrow.play()

func _on_picked_up(pickable: Variant) -> void:
	$BallPickup.play()

func _on_grabbed(pickable: Variant, by: Variant) -> void:
	$BallPickup.play()

func _on_released(pickable: Variant, by: Variant) -> void:
	$BallThrow.play()
