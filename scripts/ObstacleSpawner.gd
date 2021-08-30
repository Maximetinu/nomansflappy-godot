extends Position3D


signal obstacle_spawned(obstacle)

const verticalRange = 7

var obstaclePrefab = load("res://prefabs/Obstacle.tscn")
var obstacleCount = 0

var rng = RandomNumberGenerator.new()


func _ready():
	rng.randomize()


func _on_Timer_timeout():
	var obstacle = obstaclePrefab.instance()
	obstacle.set_name("Obstacle " + str(obstacleCount))
	obstacle.translation += Vector3.UP * rng.randf_range(-verticalRange/2, verticalRange/2)
	add_child(obstacle)  
	emit_signal("obstacle_spawned", obstacle)
