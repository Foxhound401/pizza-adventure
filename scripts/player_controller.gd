extends KinematicBody2D

var speed: int = 400
var jump_speed: int = -50
var gravity: int = 50
var velocity = Vector2()

func get_input(delta) -> void:
	velocity.x = 0
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
	if Input.is_action_pressed("jump"):
		velocity.y += jump_speed + delta

	# gravity
	velocity.y += gravity + delta
	velocity = move_and_slide(velocity, Vector2.UP)



	pass

func _physics_process(delta: float) -> void:
	get_input(delta)	
