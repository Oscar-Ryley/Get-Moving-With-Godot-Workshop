extends Node3D

var entered = false;
var red_material = load("res://Textures/Red-Obstacle.tres");
var blue_material = load("res://Textures/Blue-Obstacle.tres");

func _ready():
	Global.total_platforms += 1;
	$MeshInstance3D.set_surface_override_material(0, blue_material)

func _on_area_3d_body_entered(body):
	if Global.hard_mode == true:
		if entered == false:
			Global.platforms += 1;
			$MeshInstance3D.set_surface_override_material(0, red_material);
			entered = true;
		else:
			Global.platforms -= 1;
			$MeshInstance3D.set_surface_override_material(0, blue_material);
			entered = false;

	else:
		if entered == false:
			Global.platforms += 1;
			$MeshInstance3D.set_surface_override_material(0, red_material);
			entered = true;
