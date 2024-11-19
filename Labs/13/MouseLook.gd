extends Camera3D


func _unhandled_input(event: InputEvent):
	if event is InputEventMouseMotion:
		self.rotate_x(event.relative.y * 0.001)
