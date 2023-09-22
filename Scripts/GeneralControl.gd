extends Node

var pausa: bool = false
var fullscreen: bool = false

onready var valoresE = $"/root/Valores"

func _ready():
	$Music.volume_db = valoresE.volumen
	$Sprite/Fondo/HSlider.value = $Music.volume_db 
	
func _input(event):
	if event is InputEventKey and event.is_pressed() and not event.is_echo():
		if event.is_action_pressed("fullscreen"):
			if fullscreen == false:
				OS.window_fullscreen = true
				fullscreen = true
			else:
				OS.window_fullscreen = false
				fullscreen = false
		
		if event.is_action_pressed("pause") and $Music.is_playing():
			if pausa == false:
				get_tree().paused = true
				pausa = true
				$Sprite.show()
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			else:
				get_tree().paused = false
				pausa = false
				$Sprite.hide()
				Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_HSlider_value_changed(value):
	$Music.volume_db = value

func _on_Menu_pressed():
	valoresE.volumen = $Sprite/Fondo/HSlider.value
	get_tree().paused = false
	return get_tree().change_scene("res://Scenes/Main.tscn")

func _on_Continuar_pressed():
	get_tree().paused = false
	pausa = false
	$Sprite.hide()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
