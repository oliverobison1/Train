extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var turn = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	if input.get_ui()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	if turn < 1:
		rotation_degrees.y = lerp(turn_start, turn_start+turn_target, turn)
		turn += delta
	move_and_slide(-transform.basis.z)
#	pass
