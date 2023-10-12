extends Camera2D

#This might be a really stupid way to do this
func _process(delta: float) -> void:
	var mouse_x = get_local_mouse_position().x
	var mouse_y = get_local_mouse_position().y
	print(get_window().size.y)
	if mouse_x >= get_window().size.x * 0.5:
		$".".position.x += 300*delta
	if mouse_x <= -get_window().size.x * 0.5:
		$".".position.x -= 300*delta
	if mouse_y >= get_window().size.y * .45:
		$".".position.y += 300*delta
	if mouse_y <= -get_window().size.y * .45:
		$".".position.y -= 300*delta

