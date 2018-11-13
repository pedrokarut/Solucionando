extends AnimationPlayer


func _ready():
	get_node(".").play("New Anim")


func _on_Timer_timeout():
	get_node("Label").visible = true


func _on_Timer2_timeout():
	get_tree().change_scene("Principal.tscn")
