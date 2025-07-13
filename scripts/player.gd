extends CharacterBody2D


const SPEED = 150.0


func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	var direction_left_right := Input.get_axis("move_left", "move_right")
	var direction_up_down := Input.get_axis("move_up", "move_down")

	if direction_left_right:
		velocity.x = direction_left_right * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if direction_up_down:
		velocity.y = direction_up_down * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
