extends Button

@export var cost: int = 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	disabled = not Globals.points >= cost
