extends CharacterBody2D

@export var speed = 400
@export var jump_velocity = -800
@export var gravity = 2000

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Forward", "Back")
	velocity.x = input_direction.x * speed

	if (Input.is_action_just_pressed("Jump") or Input.is_action_just_pressed("Forward")) and is_on_floor():
		velocity.y = jump_velocity

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	get_input()
	move_and_slide()
