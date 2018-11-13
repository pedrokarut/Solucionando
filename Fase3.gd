extends Node2D


func _ready():
	pass


func _on_CheckBox3_button_down():
	get_node("CheckBox").pressed = false
	get_node("CheckBox2").pressed = false
	get_node("CheckBox4").pressed = false


func _on_CheckBox4_button_down():
	get_node("CheckBox").pressed = false
	get_node("CheckBox2").pressed = false
	get_node("CheckBox3").pressed = false


func _on_CheckBox2_button_down():
	get_node("CheckBox").pressed = false
	get_node("CheckBox3").pressed = false
	get_node("CheckBox4").pressed = false


func _on_CheckBox_button_down():
	get_node("CheckBox2").pressed = false
	get_node("CheckBox3").pressed = false
	get_node("CheckBox4").pressed = false


func _on_Button_pressed():
	if get_node("CheckBox").pressed:
		get_node("Label19").modulate = "fb0023"
		get_node("CheckBox2").disabled = true
		get_node("CheckBox3").disabled = true
		get_node("CheckBox4").disabled = true
	elif get_node("CheckBox2").pressed:
		get_node("Label2").modulate = "fb0023"
		get_node("CheckBox").disabled = true
		get_node("CheckBox3").disabled = true
		get_node("CheckBox4").disabled = true
	elif get_node("CheckBox3").pressed:
		get_node("Label20").modulate = "fb0023"
		get_node("CheckBox").disabled = true
		get_node("CheckBox2").disabled = true
		get_node("CheckBox4").disabled = true
	elif get_node("CheckBox4").pressed:
		get_node("Label21").modulate = "37cf00"
		get_node("CheckBox2").disabled = true
		get_node("CheckBox3").disabled = true
		get_node("CheckBox").disabled = true 
	
	


func _on_Button2_pressed():
	get_tree().change_scene("Principal.tscn")
