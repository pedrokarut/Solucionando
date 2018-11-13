extends Area2D

func _ready():
	set_process(true)

func _process(delta):
	position.y += 100 * delta
	if Input.is_action_pressed("goright"):
		position.x += 50 * delta
	if Input.is_action_pressed("goleft"):
		position.x -= 50 * delta

func _on_Sangue_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.name == "MisHeterogenea":
		get_parent().get_node("Qtd").text = str(int(get_parent().get_node("Qtd").text) + 1)
		queue_free()
