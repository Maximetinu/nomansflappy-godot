extends Area


const speed = 3

func _ready():
	yield(get_tree().create_timer(10.0), "timeout")
	queue_free()


func _process(delta):
	self.translation = self.translation + Vector3.LEFT * speed * delta
