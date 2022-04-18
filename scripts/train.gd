extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

<<<<<<< HEAD
var turn = 0;
=======
var turn = 0
var turn_speed = 1
var turning = false
var turn_start = 0
var turn_target = 0
var junction = false
>>>>>>> origin

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
<<<<<<< HEAD
	if input.get_ui()
=======
	if Input.is_action_just_pressed("ui_left") and turn >= 1:
		print('left')
		turn = 0
		turn_start = rotation_degrees.y
		turn_target = 90
	if Input.is_action_just_pressed("ui_right") and turn >= 1:
		print('right')
		turn = 0
		turn_start = rotation_degrees.y
		turn_target = -90
	if Input.is_action_just_pressed("ui_up"):
		#print('up')
		pass
	if Input.is_action_just_pressed("ui_down"):
		#print('down')
		pass
>>>>>>> origin

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	if junction:
		junction = false
		turn = 0
	if turn < 1:
		rotation_degrees.y = lerp(turn_start, turn_start+turn_target, turn)
		turn += delta
	move_and_slide(-transform.basis.z)
#	pass
