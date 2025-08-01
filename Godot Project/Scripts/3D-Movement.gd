extends CharacterBody3D

const SPEED = 7.0
const JUMP_VELOCITY = 5.0

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var neck := $Node3D
@onready var camera := $Node3D/Camera3D

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

	elif event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		if event is InputEventMouseMotion:
			neck.rotate_y(-event.relative.x * 0.002)
			camera.rotate_x(-event.relative.y * 0.002)
			camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-90), deg_to_rad(60))


func _physics_process(delta):	
	if not is_on_floor():
		velocity.y -= gravity * delta

	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var input_dir = Input.get_vector("Left", "Right", "Forward", "Back")
	var direction = (neck.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
