extends Camera

func _ready():
	Events.connect("explosion_happened", self, "onFeedback")

func onFeedback():
	print("superfeedback!!!!")
