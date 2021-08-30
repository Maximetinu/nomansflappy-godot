extends Area


const speed = 3


func _process(delta):
	self.translation = self.translation + Vector3.LEFT * speed * delta
