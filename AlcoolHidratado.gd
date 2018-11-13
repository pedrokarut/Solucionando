extends Area2D

func _ready():
	set_process(true)

func _process(delta):
	position.y += 100 * delta
	if Input.is_action_pressed("goright"):
		position.x += 50 * delta
	if Input.is_action_pressed("goleft"):
		position.x -= 50 * delta
		
func _on_AlcoolHidratado_body_entered(body):
	if body.name == "MisHomogenea":
		get_parent().get_node("Qtd").text = str(int(get_parent().get_node("Qtd").text) + 1)
		queue_free()
