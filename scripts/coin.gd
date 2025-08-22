extends XRToolsPickable

func _on_grabbed(pickable: Variant, by: Variant) -> void:
	$CoinPickup.play()

func _on_picked_up(pickable: Variant) -> void:
	$CoinPickup.play()
