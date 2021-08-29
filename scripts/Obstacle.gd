extends Area


const speed = 5


func _process(delta):
	self.translation = self.translation + Vector3.LEFT * speed * delta
