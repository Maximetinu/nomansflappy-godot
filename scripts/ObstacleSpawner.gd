extends Position3D


signal obstacle_spawned(obstacle)

var obstaclePrefab = load("res://prefabs/Obstacle.tscn")
var obstacleCount = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
 

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var obstacle = obstaclePrefab.instance()
	obstacle.set_name("Obstacle " + str(obstacleCount))
	add_child(obstacle)  
	emit_signal("obstacle_spawned", obstacle)
