extends Node

@onready var platforms = 0;
@onready var total_platforms = 0;
@onready var three_dimensions = true;
@onready var hard_mode = false;

@onready var two_d_scene = load("res://2D-Scene.tscn").instantiate()
@onready var three_d_scene = load("res://3D-Scene.tscn").instantiate()

func activate_3d():
	three_d_scene.show()
	three_d_scene.process_mode = Node.PROCESS_MODE_INHERIT
	two_d_scene.hide()
	two_d_scene.process_mode = Node.PROCESS_MODE_DISABLED
	three_dimensions = true

func activate_2d():
	two_d_scene.show()
	two_d_scene.process_mode = Node.PROCESS_MODE_INHERIT
	three_d_scene.hide()
	three_d_scene.process_mode = Node.PROCESS_MODE_DISABLED
	three_dimensions = false


func _ready():
	add_child(two_d_scene)
	add_child(three_d_scene)
	activate_3d()

func _process(_delta):
	if Input.is_action_just_pressed("Hard Mode"):
		if hard_mode == false:
			hard_mode = true;
		else:
			hard_mode = false;
	if Input.is_action_just_pressed("Switch Scenes"):
		if three_dimensions == true:
			activate_2d()
		else:
			activate_3d()
