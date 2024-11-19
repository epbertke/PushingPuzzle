extends Area3D

@export var desiredColor : String

func _on_body_shape_entered(body_rid: RID, body: Node3D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("box"):
		# is this the desired color?
			# if so, tell the game controller
		if body.cubeColor == desiredColor:
			get_node("/root/pushingPuzzle").collectCube()
			if desiredColor == "purple":
				$"..".purple = true
			if desiredColor == "blue":
				$"..".blue = true
			if desiredColor == "yellow":
				$"..".yellow = true
			


func _on_body_shape_exited(body_rid: RID, body: Node3D, body_shape_index: int, local_shape_index: int) -> void:
	get_node("/root/pushingPuzzle").removeCube()
	if body.cubeColor == "purple":
		$"..".purple = false
	if body.cubeColor == "yellow":
		$"..".yellow = false
	if body.cubeColor == "blue":
		$"..".blue = false
