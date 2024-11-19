extends CharacterBody3D

@export var SPEED = 10
@export var raycastNode : RayCast3D
@export var joint : PinJoint3D

func _unhandled_input(event: InputEvent):
	if event is InputEventMouseMotion:
		self.rotate_y(-event.relative.x * 0.01)
	
func _process(delta):
	
	if Input.is_action_just_released("click"):
		if raycastNode.is_colliding():
			# what are we colliding with?
			var collisionTarget = raycastNode.get_collider()
			if collisionTarget.is_in_group("box"):
				joint.set_node_b(collisionTarget.get_path())
				
	if Input.is_action_just_pressed("release"):
		joint.set_node_b("")

func _physics_process(delta):
		
	# Get the input direction and handle the movement
	var input_dir := Input.get_vector("right", "left", "back", "forward")
	var direction = (self.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	
		move_and_slide()
