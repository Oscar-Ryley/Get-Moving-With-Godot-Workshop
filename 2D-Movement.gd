# Character Scene:
# Node2D
# - CharacterBody2D
# 	- Sprite2D
# 	- CollisionShape2D

extends CharacterBody2D

@export var speed = 400
@export var jump_velocity = -800 # Jumping, for projects with gravity
@export var gravity = 2000 # Gravity downward force

func get_input():
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity.x = input_direction.x * speed
	# velocity.y = input_direction.y * speed # Up & Down movement, for projects without gravity

	# Gravity, for projects like 2D platformers
	if (Input.is_action_just_pressed("Jump") or Input.is_action_just_pressed("Forward")) and is_on_floor():
		velocity.y = jump_velocity

func _physics_process(delta):
	# Handling a constant Gravity force
	if not is_on_floor():
		velocity.y += gravity * delta

	get_input()
	move_and_slide()
