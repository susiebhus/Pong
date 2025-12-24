extends Area2D

@export var vec:Vector2 = Vector2(5,5)
var init_poition:Vector2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.add_to_group("Ball")
	init_poition = position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += vec

func reset():
	if vec.x > 0:
		Score.score1 += 1
	else:
		Score.score2 += 1
	position = init_poition
