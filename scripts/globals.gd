class_name Globals
extends Node3D

static var curr_points: int = 0 # Of this game
static var points: int = 10000 # Of the whole game to spend
static var time_per_game: float = 11.0
static var score_board: Control
static var blockade: Node3D
static var ball_spawn_pos: Node3D
static var coin_spawn_pos: Node3D
static var supreme_ball: bool = false
static var points_per_basket = 1
static var balls = []

static func incr_points():
	points += points_per_basket
	curr_points += points_per_basket
	score_board.update_points()

static func reset_points():
	curr_points = 0
	score_board.update_points()
