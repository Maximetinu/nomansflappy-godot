extends RigidBody

var jump_force = 15

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("jump") :
		linear_velocity = Vector3.UP * jump_force
	pass