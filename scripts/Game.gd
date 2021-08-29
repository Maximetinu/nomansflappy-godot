extends Spatial

func _on_Obstacle_Spawner_obstacle_spawned(obstacle):
	obstacle.connect("body_entered", $Player, "_on_Obstacle_body_entered")
