extends StaticBody3D

func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.is_in_group("Ball"):
		area.get_parent().global_position = Globals.ball_spawn_pos.global_position
	elif area.is_in_group("Coin"):
		area.get_parent().global_position = Globals.coin_spawn_pos.global_position
