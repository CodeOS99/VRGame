extends Node3D

var timer: Timer

func _ready() -> void:
	timer = Timer.new()
	timer.wait_time = Globals.time_per_game
	timer.autostart = false
	timer.one_shot = true
	timer.timeout.connect(end_game)
	self.add_child(timer)

func _process(delta: float) -> void:
	Globals.score_board.update_time(timer.time_left)

func _on_snap_zone_has_picked_up(what: Variant) -> void:
	timer.wait_time = Globals.time_per_game
	timer.start()
	Globals.blockade.unblock()
	self.add_child(timer)
	
	var tween = what.create_tween()
	tween.tween_property(what, "scale", Vector3.ZERO, 1.5)
	tween.finished.connect(func(): what.queue_free())

func end_game():
	Globals.blockade.block()
