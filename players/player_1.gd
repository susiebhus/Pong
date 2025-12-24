extends Area2D

@export var u_rent:int = 1

func _physics_process(delta):
	for i in get_overlapping_areas():
		if i.is_in_group("Ball"):
			i.vec.x = 5
	var yu = u_rent * Input.get_action_strength("player1up")
	var yd = u_rent * Input.get_action_strength("player1down")
	var yn = position.y - yu + yd
	if yn >16:
		if yn <630:
			position.y = position.y - yu + yd
