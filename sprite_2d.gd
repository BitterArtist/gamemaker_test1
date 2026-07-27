extends CharacterBody2D


@export var speed: float = 500.0

func _physics_process(delta: float) -> void:
	# Get input direction from arrow keys or WASD
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Set velocity based on direction and speed
	if direction:
		velocity = direction * speed
	else:
		velocity = velocity.move_toward(Vector2.ZERO, speed)
		
	# Move the character
	move_and_slide()
