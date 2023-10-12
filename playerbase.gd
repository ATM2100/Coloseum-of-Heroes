extends CharacterBody2D


var speed = 300
var click_location = Vector2(0, 0)



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	click_location = Vector2(position.x, position.y)

func _physics_process(delta):
	if Input.is_action_just_pressed("click"):
		click_location = get_global_mouse_position()
	var target_position = (click_location - position).normalized()
	

	if position.distance_to(click_location) > 3:
		velocity = target_position * speed * delta
		position += velocity
		move_and_slide()
	#print(velocity)
	#print(position.x)

		
