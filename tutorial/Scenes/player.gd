extends CharacterBody2D

const SPEED = 130
#const GRAVITY = 900
const JUMP_VELOCITY = -300

func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity.y += get_gravity().y * delta
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if direction != 0:
		$player.flip_h = direction < 0
		
	move_and_slide()
	
	
	

func _ready() -> void:
	pass

	
