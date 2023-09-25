extends CanvasLayer

signal start_game

var fullscreen: bool = false
var start: bool = false

var texturaExFull = load("res://Assets/Extra/exit-full-screen.png")
var texturaFull = load("res://Assets/Extra/fullscreen.png")

func _ready():
	if OS.window_fullscreen == true:
		$FullScreen.set_normal_texture(texturaExFull)
		fullscreen = true
	else:
		$FullScreen.set_normal_texture(texturaFull)
		fullscreen = false

func _process(_delta):
	if Input.is_action_pressed("ui_accept") and $Start.is_visible_in_tree():
		emit_signal("start_game")

# Actualiza el "TimeLabel" 
func update_time(time): 
	$TimeLabel.text = "Time: " + str(time)
	
# Actualiza el "ScoreLabel" 
func update_score(score): 
	$ScoreLabel.text = "Score: " + str(score)

func update_level(level): 
	$ShowLvL.text = "Level: " + str(level)
	
# Muestra el "MessageLabel" en pantalla y permite actualizarlo
func show_message(text): 
	$MessageLabel.text = text
	$MessageLabel.rect_position = Vector2(420,200)
	$MessageLabel.show()
	$MessageTimer.start()
	$LevelTimer.start()

# Muestra el "LevelLabel" en pantalla y permite actualizarlo
func show_level(text): 
	$LevelLabel.text = text
	$LevelLabel.rect_position = Vector2(790,410)
	$LevelLabel.show()
	$LevelTimer.start()

# Al presionar el boton "Start" emite una señal que conecta con "Main"
func _on_Start_pressed(): 
	$Panel.show()
	$FullScreen.hide()
	$NombreJuego.hide()
	$NombreJuegoLabel.hide()
	$Start.hide()
	$StartLabel.hide()
	$Help.hide()
	$HelpLabel.hide()
	$Exit.hide()
	$ExitLabel.hide()
	$ReadyLabel.rect_position = Vector2(95,275)
	$StartTimer.start()

# Cierra la ventana la presionar el boton "Exit"
func _on_Exit_pressed():
	get_tree().quit()

func _on_Help_pressed():
	var helpScene = preload("res://Scenes/Ayuda.tscn")
	return get_tree().change_scene_to(helpScene)

# Temporizador para ocultar el "MessageLabel"
func _on_MessageTimer_timeout():
	$MessageLabel.hide()
	
# Temporizador para ocultar el "LevelLabel"
func _on_LevelTimer_timeout():
	$LevelLabel.hide()

func _on_FullScreen_pressed():
	if fullscreen == false:
		OS.window_fullscreen = true
		fullscreen = true
		$FullScreen.set_normal_texture(texturaExFull)
	else:
		OS.window_fullscreen = false
		fullscreen = false
		$FullScreen.set_normal_texture(texturaFull)

func _on_StartTimer_timeout():
	emit_signal("start_game")
