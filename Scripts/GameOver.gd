extends CanvasLayer

var mainScene = preload("res://Scenes/Main.tscn")
var definiciones = preload("res://Scenes/PantallaPalabras.tscn")

onready var valoresE = $"/root/Valores"

func _ready():
	$DeathSound.volume_db = valoresE.volumen 
	$DeathSound.play()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$Final/ScoreF.text = str(valoresE.puntaje)
	$Final/NivelF.text = str(valoresE.nivel)
	$Final/TiempoF.text = str(valoresE.tiempo)
	
#func _on_Exit_pressed():
#	get_tree().quit()
	
func _on_Menu_pressed():
	get_tree().call_deferred("change_scene", "res://Scenes/PantallaPresentacion.tscn")
	
func _on_Definiciones_pressed():
	return get_tree().change_scene_to(definiciones)
