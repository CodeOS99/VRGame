extends Area3D

func _on_area_entered(area: Area3D) -> void:
	if area.is_in_group("Ball"):
		Globals.incr_points()
		$BallGoInNet.play()
