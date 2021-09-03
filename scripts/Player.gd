extends RigidBody


signal score_up(new_score)


const jump_force = 10
var score = 0


func _process(delta):
	if Input.is_action_just_pressed("jump") :
		linear_velocity = Vector3.UP * jump_force
	
	
func _on_Obstacle_Spawner_obstacle_spawned(obstacle):
	obstacle.connect("body_entered", self, "_on_Obstacle_body_entered")
	obstacle.get_node("Score Trigger").connect("body_entered", self, "_on_Sc ore_Trigger_body_entered")


func _on_Obstacle_body_entered(body):
	set_process(false)
	self.gravity_scale = 0
	self.linear_velocity = Vector3.ZERO
	$CollisionShape.disabled = true
	$Tween.interpolate_property(self, "scale", self.scale, self.scale * 35, 0.5, Tween.TRANS_QUAD, Tween.EASE_OUT)
	$Tween.start()
	yield($Tween, "tween_completed")
	queue_free()
	

func _on_Score_Trigger_body_entered(body):
	score += 1
	emit_signal("score_up", score)
