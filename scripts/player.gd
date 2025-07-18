extends CharacterBody2D


const SPEED = 100.0


func get_input() -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * SPEED


func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()
