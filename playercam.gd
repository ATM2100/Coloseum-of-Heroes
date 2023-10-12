extends Camera2D

#This might be a really stupid way to do this
func _process(delta: float) -> void:
	var mouse_x = get_local_mouse_position().x
	var mouse_y = get_local_mouse_position().y
	print($".".position.y)
	if mouse_x >= 900:
		$".".position.x += 300*delta
	if mouse_x <= -900:
		$".".position.x -= 300*delta
	if mouse_y >= 550:
		$".".position.y += 300*delta
	if mouse_y <= -510:
		$".".position.y -= 300*delta

