extends RigidBody


const jump_force = 10


func _process(delta):
	if Input.is_action_just_pressed("jump") :
		linear_velocity = Vector3.UP * jump_force
	
	
func _on_Obstacle_Spawner_obstacle_spawned(obstacle):
	obstacle.connect("body_entered", self, "_on_Obstacle_body_entered")
	obstacle.get_node("Score Trigger").connect("body_entered", self, "_on_Score_Trigger_body_entered")


func _on_Obstacle_body_entered(body):
	get_tree().reload_current_scene()
	

func _on_Score_Trigger_body_entered(body):
	print("score++")
