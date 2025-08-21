class_name Globals
extends Node3D

static var points: int = 0
static var score_board: Control
static var blockade: Node3D

static func incr_points():
	points += 1
	score_board.update_points()
