extends Node2D

func _ready():
	pass


func _on_Button_pressed():
	get_tree().change_scene("IntroducaoFaseCaixas.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("Fase3.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("Pergunta1.tscn")


func _on_Button5_pressed():
	get_tree().change_scene("Pergunta5.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("Pergunta4.tscn")
