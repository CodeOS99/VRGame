extends CanvasLayer

var sup_ball = preload("res://scenes/supreme_ball.tscn")
var normal_ball = preload("res://scenes/ball.tscn")
var coin = preload("res://scenes/coin.tscn")

func _on_more_points_btn_pressed() -> void:
	Globals.points -= 5
	Globals.points_per_basket += 1
	$Panel/ui_click.play()

func _on_supreme_ball_btn_pressed() -> void:
	Globals.points -= 50
	Globals.supreme_ball = true 
	
	var new_balls: Array = []
	for ball in Globals.balls:
		if not is_instance_valid(ball):
			continue
		if ball.scene_file_path == "res://scenes/supreme_ball.tscn":
			new_balls.append(ball)
			continue

		var b = sup_ball.instantiate()
		b.global_position = ball.global_position
		ball.get_parent().add_child(b)
		ball.queue_free()
		new_balls.append(b)
	
	Globals.balls = new_balls
	$Panel/ui_click.play()

func _on_more_time_btn_pressed() -> void:
	Globals.points -= 10
	Globals.time_per_game += 10.0
	$Panel/ui_click.play()

func _on_more_ball_btn_pressed() -> void:
	Globals.points -= 15
	var b
	if Globals.supreme_ball:
		b = sup_ball.instantiate()
	else:
		b = normal_ball.instantiate()
	
	b.global_position = Globals.ball_spawn_pos.global_position
	add_child(b)
	$Panel/ui_click.play()

func _on_more_coin_btn_pressed() -> void:
	Globals.points -= 1
	var c = coin.instantiate()
	c.global_position = Globals.coin_spawn_pos.global_position
	add_child(c)
	$Panel/ui_click.play()

func _on_waste_points_btn_pressed() -> void:
	Globals.points -= 10
	$Panel/ui_click.play()

func _on_more_points_btn_mouse_entered() -> void:
	$Panel/UiHover.play()

func _on_supreme_ball_btn_mouse_entered() -> void:
	$Panel/UiHover.play()

func _on_more_time_btn_mouse_entered() -> void:
	$Panel/UiHover.play()

func _on_more_ball_btn_mouse_entered() -> void:
	$Panel/UiHover.play()

func _on_more_coin_btn_mouse_entered() -> void:
	$Panel/UiHover.play()

func _on_waste_points_btn_mouse_entered() -> void:
	$Panel/UiHover.play()
