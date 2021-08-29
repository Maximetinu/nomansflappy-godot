extends Position3D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("jump") :
		Events.emit_signal("explosion_happened")
	pass
