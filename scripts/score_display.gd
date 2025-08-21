extends Control

func _ready() -> void:
	Globals.score_board = self

func update_points():
	$PanelContainer/ScoreLabel.text = str(Globals.points).pad_zeros(3)

func update_time(wait_time: float):
	$PanelContainer/TimeLabel.text = "%05.2f" % wait_time
