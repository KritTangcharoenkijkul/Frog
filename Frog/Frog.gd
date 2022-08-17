extends RigidBody2D

const up_impulse = -555.0

func _input(event: InputEvent):
	if event is InputEventKey:
		if event.is_action_pressed("ui_select"):
			_penguin_jump()
			

func _penguin_jump():
	set_linear_velocity(Vector2(0,0))
	apply_central_impulse(Vector2(0,up_impulse))
