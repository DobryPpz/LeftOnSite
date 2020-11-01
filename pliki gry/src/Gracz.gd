extends KinematicBody2D



func _physics_process(delta):
	if(Input.is_action_pressed("up")):
		move_and_slide(Vector2(0,-180))
	if(Input.is_action_pressed("down")):
		move_and_slide(Vector2(0,180))
	if(Input.is_action_pressed("left")):
		move_and_slide(Vector2(-180,0))
	if(Input.is_action_pressed("right")):
		move_and_slide(Vector2(180,0))
