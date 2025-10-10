extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta: float) -> void:
	var vector_input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	velocity = vector_input * SPEED
	
	move_and_slide()
