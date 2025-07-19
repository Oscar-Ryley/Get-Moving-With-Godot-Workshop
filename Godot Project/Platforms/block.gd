extends Node2D

var entered = false;

func _ready():
	$BlueSprite2D.show()
	$RedSprite2D.hide()
	Global.total_platforms += 1;

func _on_area_2d_body_entered(body):
	if entered == false:
		Global.platforms += 1;
		$RedSprite2D.show()
		$BlueSprite2D.hide()
		entered = true;
	else:
		Global.platforms -= 1;
		$BlueSprite2D.show()
		$RedSprite2D.hide()
		entered = false;
