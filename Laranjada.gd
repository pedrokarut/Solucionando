extends Area2D

func _ready():
	set_process(true)

func _process(delta):
	position.y += 100 * delta
	if Input.is_action_pressed("goright"):
		position.x += 50 * delta
	if Input.is_action_pressed("goleft"):
		position.x -= 50 * delta
		
	

func _on_Laranjada_body_entered(body):
	if body.name == "MisHeterogenea" or body.name == "MisHomogenea":
		get_parent().get_node("Qtd").text = str(int(get_parent().get_node("Qtd").text) + 1)
		queue_free()
		get_tree().paused = true
		get_parent().get_node("PainelFinal").visible = true
		get_parent().get_node("PainelFinal/lblPont").text = get_parent().get_node("Qtd").text + "/10"
