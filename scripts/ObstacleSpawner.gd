extends Position3D


signal obstacle_spawned(obstacle)

var obstaclePrefab = load("res://prefabs/Obstacle.tscn")
var obstacleCount = 0


func _on_Timer_timeout():
	var obstacle = obstaclePrefab.instance()
	obstacle.set_name("Obstacle " + str(obstacleCount))
	add_child(obstacle)  
	emit_signal("obstacle_spawned", obstacle)
