extends MeshInstance


const speed = 0.1


func _process(delta):
	get_active_material(0).uv1_offset += Vector3.RIGHT * 0.1 * delta
