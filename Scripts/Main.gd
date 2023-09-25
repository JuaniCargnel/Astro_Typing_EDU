extends Node

export var time = 0
export var score = 0
export var level = 0
export var definiciones = []

var currentLetterIndex: int = -1
var enemyCounter: int = 0
var enemyQueue: int = 0
var activeEnemy = null
var death: bool = false
var enemyActiveWords = [null,null,null,null,null,null,null,null,null,null,null,null]
var lastSpawn = [null,null,null,null] 
var enemy = preload("res://Scenes/Enemy.tscn")
var rng = RandomNumberGenerator.new()

onready var laser = $Laser/Line2D
onready var enemyWord = $EnemyWord
onready var valoresE = $"/root/Valores"

func _ready():
	randomize()
	$HUD_UI/Panel.hide()
	$HUD_UI/MessageLabel.hide()
	$HUD_UI/TimeLabel.hide()
	$HUD_UI/ScoreLabel.hide()
	$HUD_UI/ShowLvL.hide()
	$HUD_UI/LevelLabel.hide()
	$HUD_UI/Spawn1.hide()
	$HUD_UI/Spawn2.hide()
	$HUD_UI/Spawn3.hide()
	$HUD_UI/Spawn4.hide()
	$HUD_UI/Spawn5.hide()
	$HUD_UI/Spawn6.hide()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

# Conecta la señal que emite el "HUD_UI" con "Main"
func new_game():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	$HUD_UI/ReadyLabel.hide()
	$HUD_UI/TimeLabel.show()
	$HUD_UI/ScoreLabel.show()
	$HUD_UI/ShowLvL.show()
	$HUD_UI/Spawn1.show()
	$Player.show()
	$HUD_UI.show_message("COMIENZA!")
	level += 1
	$HUD_UI.show_level("NIVEL 1")

	$Timers/StartTimer.start()
	$Player.start($StartPosition.position)
	yield($Timers/StartTimer, "timeout") # like js await
	$Timers/Time.start()
	$Timers/MobTimer.start()
	$GeneralControl/Music.play()
	spawn_enemy()

# Conecta la señal que emite el "Player" con "Main"
func game_over():
	death = true
	valoresE.puntaje = score
	valoresE.nivel = level
	valoresE.tiempo = time
	$GeneralControl/Music.stop()
	var gameover = load("res://Scenes/GameOver.tscn")
	return get_tree().change_scene_to(gameover) 
	
func _process(_delta):
	if activeEnemy != null and death == false:
		laser.points = [$Player.get_position(), activeEnemy.get_position()]
	else:
		laser.points = [0,0]
	
	########### LEVEL 2 ###########
	if score == 10 and level == 1:
		level += 1
		$HUD_UI/Spawn2.show()
		$Timers/MobTimer.set_wait_time(1.3)
		$HUD_UI/LevelTimer.set_wait_time(2)
		$HUD_UI.show_level("NIVEL 2")
	########### LEVEL 3 ###########
	if score == 20 and level == 2:
		level += 1
		$HUD_UI/Spawn3.show()
		$Timers/MobTimer.set_wait_time(1.5)
		$HUD_UI.show_level("NIVEL 3")
	########### LEVEL 4 ###########
	if score == 35 and level == 3:
		level += 1
		$HUD_UI/Spawn4.show() 
		$Timers/MobTimer.set_wait_time(1.7)
		$HUD_UI.show_level("NIVEL 4")
	########### LEVEL 5 ###########
	if score == 50 and level == 4:
		level += 1
		$HUD_UI/Spawn5.show() 
		$Timers/MobTimer.set_wait_time(1.9)
		$HUD_UI.show_level("NIVEL 5")
	########### LEVEL 6 ###########
	if score == 70 and level == 5:
		level += 1
		$HUD_UI/Spawn6.show() 
		$Timers/MobTimer.set_wait_time(2.1)
		$HUD_UI.show_level("NIVEL 6")
	
	$HUD_UI.update_score(score)
	$HUD_UI.update_level(level)
	
# Instancia nuevo enemigo en posiciones aleatorias con una palabra random asociada
func spawn_enemy():
	enemyCounter += 1
	var enemyInstance = enemy.instance()
	
	########## LEVEL 1 ##########
	if level == 1:
		enemyInstance.position = $HUD_UI/Spawn1.position
		_on_SpawnAnimation1_timeout()
		$HUD_UI/Spawn1.play()
		$Timers/SpawnAnimation1.start()
		enemyWord.add_child(enemyInstance)
		
	########## LEVEL 2 ##########
	if level == 2:
		var switch = randi() % 2
		enemyInstance.maxPalabras = 59
		enemyInstance.speed = 170
		enemyWord.add_child(enemyInstance)
		
		match switch:
			0:
				enemyInstance.position = $HUD_UI/Spawn1.position
				_on_SpawnAnimation1_timeout()
				$HUD_UI/Spawn1.play()
				$Timers/SpawnAnimation1.start()
			1:
				enemyInstance.position = $HUD_UI/Spawn2.position
				_on_SpawnAnimation2_timeout()
				$HUD_UI/Spawn2.play()
				$Timers/SpawnAnimation2.start()
			
	########## LEVEL 3 ##########
	if level == 3:
		var switch = randi() % 3
		
		while switch == lastSpawn[0]: 
			switch = randi() % 3
		
		lastSpawn[0] = switch  
		
		enemyInstance.maxPalabras = 89
		enemyInstance.speed = 190
		enemyWord.add_child(enemyInstance)

		
		match switch:
			0:
				enemyInstance.position = $HUD_UI/Spawn1.position
				_on_SpawnAnimation1_timeout()
				$HUD_UI/Spawn1.play()
				$Timers/SpawnAnimation1.start()
			1:
				enemyInstance.position = $HUD_UI/Spawn2.position
				_on_SpawnAnimation2_timeout()
				$HUD_UI/Spawn2.play()
				$Timers/SpawnAnimation2.start()
			2:
				enemyInstance.position = $HUD_UI/Spawn3.position
				_on_SpawnAnimation3_timeout()
				$HUD_UI/Spawn3.play()
				$Timers/SpawnAnimation3.start()
			
	########## LEVEL 4 ##########
	if  level == 4:
		var switch = randi() % 4
		enemyInstance.maxPalabras = 114
		enemyInstance.speed = 210
		enemyWord.add_child(enemyInstance)
		
		while switch == lastSpawn[1]: 
			switch = randi() % 4
		
		lastSpawn[1] = switch 
		
		match switch:
			0:
				enemyInstance.position = $HUD_UI/Spawn1.position
				_on_SpawnAnimation1_timeout()
				$HUD_UI/Spawn1.play()
				$Timers/SpawnAnimation1.start()
			1:
				enemyInstance.position = $HUD_UI/Spawn2.position
				_on_SpawnAnimation2_timeout()
				$HUD_UI/Spawn2.play()
				$Timers/SpawnAnimation2.start()
			2:
				enemyInstance.position = $HUD_UI/Spawn3.position
				_on_SpawnAnimation3_timeout()
				$HUD_UI/Spawn3.play()
				$Timers/SpawnAnimation3.start()
			3:
				enemyInstance.position = $HUD_UI/Spawn4.position
				_on_SpawnAnimation4_timeout()
				$HUD_UI/Spawn4.play()
				$Timers/SpawnAnimation4.start()
			
	########## LEVEL 5 ##########
	if level == 5:
		var switch = randi() % 5
		enemyInstance.maxPalabras = 139
		enemyInstance.speed = 230
		enemyWord.add_child(enemyInstance)
		
		while switch == lastSpawn[2]: 
			switch = randi() % 5
		
		lastSpawn[2] = switch 
		
		match switch:
			0:
				enemyInstance.position = $HUD_UI/Spawn1.position
				_on_SpawnAnimation1_timeout()
				$HUD_UI/Spawn1.play()
				$Timers/SpawnAnimation1.start()
			1:
				enemyInstance.position = $HUD_UI/Spawn2.position
				_on_SpawnAnimation2_timeout()
				$HUD_UI/Spawn2.play()
				$Timers/SpawnAnimation2.start()
			2:
				enemyInstance.position = $HUD_UI/Spawn3.position
				_on_SpawnAnimation3_timeout()
				$HUD_UI/Spawn3.play()
				$Timers/SpawnAnimation3.start()
			3:
				enemyInstance.position = $HUD_UI/Spawn4.position
				_on_SpawnAnimation4_timeout()
				$HUD_UI/Spawn4.play()
				$Timers/SpawnAnimation4.start()
			4:
				enemyInstance.position = $HUD_UI/Spawn5.position
				_on_SpawnAnimation5_timeout()
				$HUD_UI/Spawn5.play()
				$Timers/SpawnAnimation5.start()
			
	########## LEVEL 6 ##########
	if level == 6: 
		var switch = randi() % 6
		enemyInstance.minPalabras = 60
		enemyInstance.maxPalabras = 139
		enemyInstance.speed = 250
		enemyWord.add_child(enemyInstance)
#
		while switch == lastSpawn[3]: 
			switch = randi() % 6
		
		lastSpawn[3] = switch 
		
		match switch:
			0:
				enemyInstance.position = $HUD_UI/Spawn1.position
				_on_SpawnAnimation1_timeout()
				$HUD_UI/Spawn1.play()
				$Timers/SpawnAnimation1.start()
			1:
				enemyInstance.position = $HUD_UI/Spawn2.position
				_on_SpawnAnimation2_timeout()
				$HUD_UI/Spawn2.play()
				$Timers/SpawnAnimation2.start()
			2:
				enemyInstance.position = $HUD_UI/Spawn3.position
				_on_SpawnAnimation3_timeout()
				$HUD_UI/Spawn3.play()
				$Timers/SpawnAnimation3.start()
			3:
				enemyInstance.position = $HUD_UI/Spawn4.position
				_on_SpawnAnimation4_timeout()
				$HUD_UI/Spawn4.play()
				$Timers/SpawnAnimation4.start()
			4:
				enemyInstance.position = $HUD_UI/Spawn5.position
				_on_SpawnAnimation5_timeout()
				$HUD_UI/Spawn5.play()
				$Timers/SpawnAnimation5.start()
			5:
				enemyInstance.position = $HUD_UI/Spawn6.position
				_on_SpawnAnimation6_timeout()
				$HUD_UI/Spawn6.play()
				$Timers/SpawnAnimation6.start()
			
	enemyActiveWords[enemyQueue] = enemyInstance.get_prompt()
	enemyQueue += 1

# Cada vez que se termina el tiempo predefinido WAIT TIME: Instancia nuevo enemigo
func _on_MobTimer_timeout():
	############# LEVEL 1 #############
	if enemyCounter < 4 and level == 1:
		spawn_enemy()
	############# LEVEL 2 #############
	if enemyCounter < 5 and level == 2:
		spawn_enemy()
	############# LEVEL 3 #############
	if enemyCounter < 6 and level == 3:
		if enemyCounter <= 4:
			for x in 2:
				x = spawn_enemy()
		else:
			spawn_enemy()
	############# LEVEL 4 #############
	if enemyCounter < 8 and level == 4:
		if enemyCounter <= 6:
			for x in 2:
				x = spawn_enemy()
		else:
			spawn_enemy()
	############# LEVEL 5 #############
	if enemyCounter < 10 and level == 5:
		if enemyCounter <= 8: 
			for x in 2:
				x = spawn_enemy()
		else:
			spawn_enemy()
	############# LEVEL 6 #############
	if enemyCounter < 12 and level == 6:
		if enemyCounter <= 10: 
			for x in 2:
				x = spawn_enemy()
		else:
				spawn_enemy()

# Busca un enemigo posible 
func find_new_active_enemy(typedCharacter: String):
	for newEnemy in enemyWord.get_children():
		var prompt = newEnemy.get_prompt().to_lower()
		var nextCharacter = prompt.substr(0, 1).to_lower()
		if  nextCharacter == typedCharacter and death == false:
			activeEnemy = newEnemy
			currentLetterIndex = 1
			activeEnemy.set_next_character(currentLetterIndex)
			return

# Al presionar una tecla busca un enemigo disponible para comenzar a destruirlo 
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed() and not event.is_echo():
		var typedEvent = event as InputEventKey
		var keyTyped = PoolByteArray([typedEvent.unicode]).get_string_from_utf8()
		
		if event.is_action_pressed("switch"):
			if activeEnemy != null:
				activeEnemy.raise()
			
			for x in enemyQueue:
				if activeEnemy != null and enemyActiveWords[x].substr(0,1) == activeEnemy.get_prompt().substr(0,1):
					activeEnemy.set_text_white(16)
					find_new_active_enemy(enemyActiveWords[x].substr(0,1))
					
		if event.is_action_pressed("delete"):
			if activeEnemy != null:
				activeEnemy.raise()
				activeEnemy.set_text_white(16)
				activeEnemy = null
				
		if event.is_action_pressed("fullscreen"):
			$HUD_UI._on_FullScreen_pressed()
		
		if activeEnemy == null:
			find_new_active_enemy(keyTyped.to_lower())
		else:
			var prompt = activeEnemy.get_prompt()
			var next_character = prompt.substr(currentLetterIndex, 1)
			if keyTyped.to_lower() == next_character and death == false:
				currentLetterIndex += 1
				activeEnemy.set_next_character(currentLetterIndex)
				if currentLetterIndex == prompt.length():
					currentLetterIndex = -1
					for x in enemyQueue:
						if enemyActiveWords[x] == activeEnemy.get_prompt():
							definiciones.append(enemyActiveWords[x])
							enemyActiveWords.remove(x)
							enemyQueue -= 1
							enemyActiveWords.append(null)
							
					activeEnemy.queue_free()
					activeEnemy = null
					enemyCounter -= 1
					score += 1

						
# Actualizar el "TimeLabel" cada 1 segundo
func _on_Time_timeout():
	time += 1
	$HUD_UI.update_time(time)

func _on_SpawnAnimation1_timeout():
	$HUD_UI/Spawn1.stop()
	$HUD_UI/Spawn1.frame = 0
func _on_SpawnAnimation2_timeout():
	$HUD_UI/Spawn2.stop()
	$HUD_UI/Spawn2.frame = 0
func _on_SpawnAnimation3_timeout():
	$HUD_UI/Spawn3.stop()
	$HUD_UI/Spawn3.frame = 0
func _on_SpawnAnimation4_timeout():
	$HUD_UI/Spawn4.stop()
	$HUD_UI/Spawn4.frame = 0
func _on_SpawnAnimation5_timeout():
	$HUD_UI/Spawn5.stop()
	$HUD_UI/Spawn5.frame = 0
func _on_SpawnAnimation6_timeout():
	$HUD_UI/Spawn6.stop()
	$HUD_UI/Spawn6.frame = 0
