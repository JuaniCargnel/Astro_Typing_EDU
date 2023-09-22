extends Area2D

signal hit

export var speed = 300
var screenSize = Vector2.ZERO

func _ready():
	screenSize = get_viewport_rect().size
	hide()

func _process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right") and Input.is_key_pressed(16777232) == false and Input.is_key_pressed(16777231) == false and Input.is_key_pressed(16777234) == false: 
		$AnimatedSprite.play("PlayerRight") 
		$AnimatedSprite.set_flip_h(false)
		direction.x += 1
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("PlayerUp") 
		$AnimatedSprite.set_flip_v(true)
		direction.x += 1
		direction.y += 1
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_up"):
		$AnimatedSprite.play("PlayerUp") 
		$AnimatedSprite.set_flip_v(false)
		direction.x += 1
		direction.y -= 1
	if Input.is_action_pressed("ui_left") and Input.is_key_pressed(16777232) == false and Input.is_key_pressed(16777233) == false and Input.is_key_pressed(16777234) == false:
		$AnimatedSprite.play("PlayerRight") 
		$AnimatedSprite.set_flip_h(true)
		direction.x -= 1
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("PlayerUp") 
		$AnimatedSprite.set_flip_v(true)
		direction.x -= 1
		direction.y += 1
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_up"):
		$AnimatedSprite.play("PlayerUp") 
		$AnimatedSprite.set_flip_v(false)
		direction.x -= 1
		direction.y -= 1
	if Input.is_action_pressed("ui_down") and Input.is_key_pressed(16777232) == false and Input.is_key_pressed(16777233) == false and Input.is_key_pressed(16777231) == false:
		$AnimatedSprite.play("PlayerUp") 
		$AnimatedSprite.set_flip_v(true)
		direction.y += 1
	if Input.is_action_pressed("ui_up") and Input.is_key_pressed(16777231) == false and Input.is_key_pressed(16777233) == false and Input.is_key_pressed(16777234) == false:
		$AnimatedSprite.play("PlayerUp") 
		$AnimatedSprite.set_flip_v(false)
		direction.y -= 1
	if direction.x == 0 and direction.y == 0:
		$AnimatedSprite.animation = "PlayerIdle"
		
	if direction.length() > 0:
		direction = direction.normalized() # Prefent to move faster on diag.
	
	position += direction * speed * delta

	position.x = clamp(position.x, 239, screenSize.x - 33)
	position.y = clamp(position.y, 40, screenSize.y - 40)

# Inicia al jugador en la posicion dada por "new_position"
func start(new_position):
	position = new_position
	show()
	$CollisionShape2D.disabled = false
	
# Detecta colision entre Player y Enemigo
func _on_Player_body_entered(_body):
	hide()
	# deferred auto waits to finish physics calculations before disable property
	$CollisionShape2D.set_deferred("disabled", true)
	emit_signal("hit")

