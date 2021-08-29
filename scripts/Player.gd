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
	
	
func _on_Obstacle_Spawner_obstacle_spawned(obstacle):
	obstacle.connect("body_entered", self, "_on_Obstacle_body_entered")


func _on_Obstacle_body_entered(body):
	print("Obstacle touched")
