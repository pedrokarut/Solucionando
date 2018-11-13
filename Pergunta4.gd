extends Node



func _ready():
	pass




func _on_BtSimular_pressed():
	get_node("BequerComFundo").visible = false
	get_node("BequerComFundo2").visible = false
	get_node("BequerComFundo3").visible = false
	get_node("Bequer500ml").visible = false
	get_node("Bequer1LClaro").visible = false
	get_node("Bequer1Lescuro2").visible = false
	get_node("Certo").visible = false
	get_node("Errado").visible = false
	
	
	if get_node("Panel/CheckBox").pressed:
		get_node("Bequer1Lescuro2").visible = true
	if get_node("Panel/CheckBox2").pressed:
		get_node("BequerComFundo").visible = true
	if get_node("Panel2/CheckBoxpnl2").pressed:
		get_node("BequerComFundo2").visible = true
	if get_node("Panel2/CheckBox2pnl2").pressed:
		get_node("Bequer1LClaro").visible = true
	if get_node("Panel3/CheckBox1pnl3").pressed:
		get_node("BequerComFundo3").visible = true
	if get_node("Panel3/CheckBox2pnl3").pressed:
		get_node("Bequer500ml").visible = true
	
	


func _on_CheckBox_pressed():
	get_node("Panel/CheckBox2").pressed = false


func _on_CheckBox2_pressed():
	get_node("Panel/CheckBox").pressed = false


func _on_CheckBoxpnl2_pressed():
	get_node("Panel2/CheckBox2pnl2").pressed =  false


func _on_CheckBox2pnl2_pressed():
	get_node("Panel2/CheckBoxpnl2").pressed =  false


func _on_CheckBox1pnl3_pressed():
	get_node("Panel3/CheckBox2pnl3").pressed = false


func _on_CheckBox2pnl3_pressed():
	get_node("Panel3/CheckBox1pnl3").pressed = false


func _on_BtOk_pressed():
	get_node("Certo").visible = false
	get_node("Errado").visible = false
	if get_node("Panel/CheckBox").pressed and get_node("Panel2/CheckBox2pnl2").pressed and get_node("Panel3/CheckBox1pnl3").pressed:
		get_node("Certo").visible = true
	else:
		get_node("Errado").visible = true


func _on_BtContinuar_pressed():
	get_tree().change_scene("Principal.tscn")
