extends KinematicBody

export var walkSpeed = 15.0
export var sprintSpeed = 30.0
var speed = 0
export var jumpForce = 100
export var velocity = Vector3.ZERO
export var gravity:float = 20
export var rotatePlayer: bool = true
export var movePlayer: bool = true

var Flashlight: bool = false

func _process(_delta):
	if Input.is_action_just_pressed("mouse_toggle"):
		if Input.mouse_mode == Input.MOUSE_MODE_VISIBLE:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			rotatePlayer = true
			movePlayer = true
		else:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
			rotatePlayer = false
			movePlayer = false
	
	if Input.is_action_just_pressed("flashlight"):
		if Flashlight == true:
			Flashlight = false
		else:
			Flashlight = true
	$Flashlight.light_energy = int(Flashlight)
	if Input.is_action_pressed("sprint"):
		speed = sprintSpeed
	else:
		speed = walkSpeed

func _input(event):
	if rotatePlayer == true:
		if event is InputEventMouseMotion:
			$Camera.rotate_x(-event.relative.y / 100)
			$".".rotate_y(-event.relative.x / 100)

func _physics_process(delta):
	if movePlayer == true:
		get_input()
		move_and_slide(velocity, Vector3.UP, true)

func get_input():
	velocity = Vector3.ZERO
	if Input.is_action_pressed("move_forward"):
		velocity += -transform.basis.z * speed
	if Input.is_action_pressed("move_back"):
		velocity += transform.basis.z * speed
	if Input.is_action_pressed("move_left"):
		velocity += -transform.basis.x * speed
	if Input.is_action_pressed("move_right"):
		velocity += transform.basis.x * speed
