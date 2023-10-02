extends CanvasLayer

var mainScript = preload("res://Scripts/Main.gd").new()
var mainScene = preload("res://Scenes/Main.tscn")

onready var palabras = $"/root/PromptList"
onready var definiciones = $"/root/DefinitionList"

var palabras3 = []
var palabras4 = []
var palabras5 = []
var palabras6 = []
var palabras7 = []
var palabras8 = []
var palabras9 = []
var palabras10 = []
var palabras11 = []
var palabras12 = []
var palabras13 = []
var palabras14 = []
var palabras15 = []

var switch3 
var switch4 
var switch5 
var switch6 
var switch7 
var switch8 
var switch9 
var switch10 
var switch11 
var switch12 
var switch13 
var switch14 
var switch15 

var visible3: bool = false
var visible4: bool = false
var visible5: bool = false
var visible6: bool = false
var visible7: bool = false
var visible8: bool = false
var visible9: bool = false
var visible10: bool = false
var visible11: bool = false
var visible12: bool = false
var visible13: bool = false
var visible14: bool = false
var visible15: bool = false


var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	
	for x in mainScript.definiciones.size():
		if len(mainScript.definiciones[x]) == 3:
			palabras3.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 4:
			palabras4.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 5:
			palabras5.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 6:
			palabras6.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 7:
			palabras7.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 8:
			palabras8.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 9:
			palabras9.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 10:
			palabras10.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 11:
			palabras11.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 12:
			palabras12.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 13:
			palabras13.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 14:
			palabras14.append(mainScript.definiciones[x])
		if len(mainScript.definiciones[x]) == 15:
			palabras15.append(mainScript.definiciones[x])
			
	if palabras3.size() > 0:
		switch3 = randi() % palabras3.size()
		$Palabras/Label3.text = palabras3[switch3].capitalize()
		visible3 = true
	else:
		$Palabras/Label3.hide()
	if palabras4.size() > 0:
		switch4 = randi() % palabras4.size()
		$Palabras/Label4.text = palabras4[switch4].capitalize()
		visible4 = true
	else:
		$Palabras/Label4.hide()
	if palabras5.size() > 0:
		switch5 = randi() % palabras5.size()
		$Palabras/Label5.text = palabras5[switch5].capitalize()
		visible5 = true
	else:
		$Palabras/Label5.hide()
	if palabras6.size() > 0:
		switch6 = randi() % palabras6.size()
		$Palabras/Label6.text = palabras6[switch6].capitalize()
		visible6 = true
	else:
		$Palabras/Label6.hide()
	if palabras7.size() > 0:
		switch7 = randi() % palabras7.size()
		$Palabras/Label7.text = palabras7[switch7].capitalize()
		visible7 = true
	else:
		$Palabras/Label7.hide()
	if palabras8.size() > 0:
		switch8 = randi() % palabras8.size()
		$Palabras/Label8.text = palabras8[switch8].capitalize()
		visible8 = true
	else:
		$Palabras/Label8.hide()
	if palabras9.size() > 0:
		switch9 = randi() % palabras9.size()
		$Palabras/Label9.text = palabras9[switch9].capitalize()
		visible9 = true
	else:
		$Palabras/Label9.hide()
	if palabras10.size() > 0:
		switch10 = randi() % palabras10.size()
		$Palabras/Label10.text = palabras10[switch10].capitalize()
		visible10 = true
	else:
		$Palabras/Label10.hide()
	if palabras11.size() > 0:
		switch11 = randi() % palabras11.size()
		$Palabras/Label11.text = palabras11[switch11].capitalize()
		visible11 = true
	else:
		$Palabras/Label11.hide()
	if palabras12.size() > 0:
		switch12 = randi() % palabras12.size()
		$Palabras/Label12.text = palabras12[switch12].capitalize()
		visible12 = true
	else:
		$Palabras/Label12.hide()
	if palabras13.size() > 0:
		switch13 = randi() % palabras13.size()
		$Palabras/Label13.text = palabras13[switch13].capitalize()
		visible13 = true
	else:
		$Palabras/Label13.hide()
	if palabras14.size() > 0:
		switch14 = randi() % palabras14.size()
		$Palabras/Label14.text = palabras14[switch14].capitalize()
		visible14 = true
	else:
		$Palabras/Label14.hide()
	if palabras15.size() > 0:
		switch15 = randi() % palabras15.size()
		$Palabras/Label15.text = palabras15[switch15].capitalize()
		visible15 = true
	else:
		$Palabras/Label15.hide()
	
	mainScript.definiciones.clear()
		
func _process(_delta):
	$Area2D.position = get_viewport().get_mouse_position()

#func _on_Exit_pressed():
#	get_tree().quit()
	
func _on_Menu_pressed():
	get_tree().call_deferred("change_scene", "res://Scenes/PantallaPresentacion.tscn")
	
func _on_Area3_area_entered(_area):
	if visible3 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label3.rect_position.x + $Palabras/Label3.rect_size.x + 10, $Palabras/Label3.rect_position.y))
		for x in palabras.words.size():
			if palabras3[switch3] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area3_area_exited(_area):
	if visible3 == true:
		$Control.visible = false
		
func _on_Area4_area_entered(_area):
	if visible4 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label4.rect_position.x + $Palabras/Label4.rect_size.x + 10, $Palabras/Label4.rect_position.y))
		for x in palabras.words.size():
			if palabras4[switch4] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area4_area_exited(_area):
	if visible4 == true:
		$Control.visible = false
		
func _on_Area5_area_entered(_area):
	if visible5 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label5.rect_position.x + $Palabras/Label5.rect_size.x + 10, $Palabras/Label5.rect_position.y))
		for x in palabras.words.size():
			if palabras5[switch5] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area5_area_exited(_area):
	if visible5 == true:
		$Control.visible = false
		
func _on_Area6_area_entered(_area):
	if visible6 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label6.rect_position.x + $Palabras/Label6.rect_size.x + 10, $Palabras/Label6.rect_position.y))
		for x in palabras.words.size():
			if palabras6[switch6] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area6_area_exited(_area):
	if visible6 == true:
		$Control.visible = false
		
func _on_Area7_area_entered(_area):
	if visible7 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label7.rect_position.x + $Palabras/Label7.rect_size.x + 10, $Palabras/Label7.rect_position.y))
		for x in palabras.words.size():
			if palabras7[switch7] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area7_area_exited(_area):
	if visible7 == true:
		$Control.visible = false
		
func _on_Area8_area_entered(_area):
	if visible8 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label8.rect_position.x + $Palabras/Label8.rect_size.x + 10, $Palabras/Label8.rect_position.y))
		for x in palabras.words.size():
			if palabras8[switch8] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area8_area_exited(_area):
	if visible8 == true:
		$Control.visible = false
		
func _on_Area9_area_entered(_area):
	if visible9 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label9.rect_position.x + $Palabras/Label9.rect_size.x + 10, $Palabras/Label9.rect_position.y))
		for x in palabras.words.size():
			if palabras9[switch9] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area9_area_exited(_area):
	if visible9 == true:
		$Control.visible = false
		
func _on_Area10_area_entered(_area):
	if visible10 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label10.rect_position.x + $Palabras/Label10.rect_size.x + 10, $Palabras/Label10.rect_position.y))
		for x in palabras.words.size():
			if palabras10[switch10] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area10_area_exited(_area):
	if visible10 == true:
		$Control.visible = false
		
func _on_Area11_area_entered(_area):
	if visible11 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label11.rect_position.x + $Palabras/Label11.rect_size.x + 10, $Palabras/Label11.rect_position.y))
		for x in palabras.words.size():
			if palabras11[switch11] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area11_area_exited(_area):
	if visible11 == true:
		$Control.visible = false
		
func _on_Area12_area_entered(_area):
	if visible12 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label12.rect_position.x + $Palabras/Label12.rect_size.x + 10, $Palabras/Label12.rect_position.y))
		for x in palabras.words.size():
			if palabras12[switch12] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area12_area_exited(_area):
	if visible12 == true:
		$Control.visible = false
		
func _on_Area13_area_entered(_area):
	if visible13 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label13.rect_position.x + $Palabras/Label13.rect_size.x + 10, $Palabras/Label13.rect_position.y))
		for x in palabras.words.size():
			if palabras13[switch13] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area13_area_exited(_area):
	if visible13 == true:
		$Control.visible = false
		
func _on_Area14_area_entered(_area):
	if visible14 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label14.rect_position.x + $Palabras/Label14.rect_size.x + 10, $Palabras/Label14.rect_position.y))
		for x in palabras.words.size():
			if palabras14[switch14] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area14_area_exited(_area):
	if visible14 == true:
		$Control.visible = false
		
func _on_Area15_area_entered(_area):
	if visible15 == true:
		$Control.visible = true
		$Control.set_global_position(Vector2($Palabras/Label15.rect_position.x + $Palabras/Label15.rect_size.x + 10, $Palabras/Label15.rect_position.y))
		for x in palabras.words.size():
			if palabras15[switch15] == palabras.words[x]:
				$Control/NinePatchRect/MarginContainer/VBoxContainer/Label.text = definiciones.get_definition(x)
func _on_Area15_area_exited(_area):
	if visible15 == true:
		$Control.visible = false
