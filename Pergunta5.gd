extends Node2D

func _ready():
	pass


func _on_BtOk_pressed():
	if get_node("TextEdit").text == "4" and get_node("TextEdit2").text == "1" and get_node("TextEdit3").text == "2" and get_node("TextEdit4").text == "3":
		get_node("Certo").visible = true
	else:
		get_node("Errado").visible = true

func _on_BtOk2_pressed():
	get_tree().change_scene("Principal.tscn")


func _on_BtTentarNovamente_pressed():
	get_node("TextEdit").text = ""
	get_node("TextEdit2").text = ""
	get_node("TextEdit3").text = ""
	get_node("TextEdit4").text = ""
	get_node("Certo").visible = false
	get_node("Errado").visible = false