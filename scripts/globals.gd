class_name Globals
extends Node3D

static var points: int = 0
static var score_board: Control

static func incr_points():
	var label: Label = score_board.get_child(0).get_child(0)
	points += 1
	label.text = str(points).pad_zeros(3)
