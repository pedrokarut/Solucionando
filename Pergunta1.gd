extends Node2D

var int_temp
var int_gr

func _ready():		#popula as tabelas
	get_node("ItemList").add_item("0")
	get_node("ItemList").add_item("10")
	get_node("ItemList").add_item("20")
	get_node("ItemList").add_item("30")
	get_node("ItemList").add_item("40")
	get_node("ItemList").add_item("50")
	get_node("ItemList").add_item("60")
	get_node("ItemList2").add_item("35.7")
	get_node("ItemList2").add_item("35.8")
	get_node("ItemList2").add_item("36")
	get_node("ItemList2").add_item("36.3")
	get_node("ItemList2").add_item("36.6")
	get_node("ItemList2").add_item("37")
	get_node("ItemList2").add_item("37.3")


func _on_Button_pressed():  #botão Simular
	_esconde_bequers()
	for i in get_node("ItemList").get_selected_items():
		if get_node("ItemList").is_selected(i):
				int_temp = (get_node("ItemList").get_item_text(i))
	
	for j in get_node("ItemList2").get_selected_items():
		if get_node("ItemList2").is_selected(j):
				int_gr = (get_node("ItemList2").get_item_text(j))
				
	if int_temp == "0":
		if int_gr == "35.7":
			get_node("Bequer1").visible = true
		elif int_gr == "35.8":
			get_node("Bequer2").visible = true
		elif int_gr == "36":
			get_node("Bequer3").visible = true
		elif int_gr == "36.3":
			get_node("Bequer4").visible = true
		elif int_gr == "36.6":
			get_node("Bequer5").visible = true
		elif int_gr == "37":
			get_node("Bequer6").visible = true
		elif int_gr == "37.3":
			get_node("Bequer7").visible = true
	elif int_temp == "10":
		if int_gr == "35.7":
			get_node("Bequer1").visible = true
		elif int_gr == "35.8":
			get_node("Bequer1").visible = true
		elif int_gr == "36":
			get_node("Bequer2").visible = true
		elif int_gr == "36.3":
			get_node("Bequer3").visible = true
		elif int_gr == "36.6":
			get_node("Bequer4").visible = true
		elif int_gr == "37":
			get_node("Bequer5").visible = true
		elif int_gr == "37.3":
			get_node("Bequer6").visible = true
	elif int_temp == "20":
		if int_gr == "36.3":
			get_node("Bequer2").visible = true
		elif int_gr == "36.6":
			get_node("Bequer3").visible = true
		elif int_gr == "37":
			get_node("Bequer4").visible = true
		elif int_gr == "37.3":
			get_node("Bequer5").visible = true
		else:
			get_node("Bequer1").visible = true
	elif int_temp == "30":
		if int_gr == "36.6":
			get_node("Bequer2").visible = true
		elif int_gr == "37":
			get_node("Bequer3").visible = true
		elif int_gr == "37.3":
			get_node("Bequer4").visible = true
		else:
			get_node("Bequer1").visible = true
	elif int_temp == "40":
		if int_gr == "37":
			get_node("Bequer2").visible = true
		elif int_gr == "37.3":
			get_node("Bequer3").visible = true
		else:
			get_node("Bequer1").visible = true
	elif int_temp == "50":
		if int_gr == "37.3":
			get_node("Bequer2").visible = true
		else:
			get_node("Bequer1").visible = true
	elif int_temp == "60":
		get_node("Bequer1").visible = true
		
		
		
	

func _esconde_bequers():
	get_node("Certo").visible = false
	get_node("Errado").visible = false
	get_node("Bequer1").visible = false
	get_node("Bequer2").visible = false
	get_node("Bequer3").visible = false
	get_node("Bequer4").visible = false
	get_node("Bequer5").visible = false
	get_node("Bequer6").visible = false
	get_node("Bequer7").visible = false


func _on_BtOk_pressed():
	get_node("Certo").visible = false
	get_node("Errado").visible = false
	
	for i in get_node("ItemList").get_selected_items():
		if get_node("ItemList").is_selected(i):
				int_temp = (get_node("ItemList").get_item_text(i))
	
	for j in get_node("ItemList2").get_selected_items():
		if get_node("ItemList2").is_selected(j):
				int_gr = (get_node("ItemList2").get_item_text(j))
	if int_temp == "30" and int_gr == "36.3":
		get_node("Certo").visible = true
	elif int_temp == "40" and int_gr == "36.6":
		get_node("Certo").visible = true
	elif int_temp == "50" and int_gr == "37":
		get_node("Certo").visible = true
	elif int_temp == "60" and int_gr == "37.3":
		get_node("Certo").visible = true
	else:
		get_node("Errado").visible = true

func _on_BtContinuar_pressed():
	get_tree().change_scene("Principal.tscn")
