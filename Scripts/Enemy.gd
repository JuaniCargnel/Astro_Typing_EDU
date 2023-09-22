extends RigidBody2D

var animationSprite = randi() % 3
var velocity_x
var velocity_y

export var speed = 150
export var minPalabras = 0
export var maxPalabras = 29

var rng = RandomNumberGenerator.new()

export (Color) var lime = Color("#00FF00")
export (Color) var yellow = Color("#EEE033")
export (Color) var red = Color("#FF0000")
export (Color) var white = Color("#FFFFFF")

onready var prompt = $RichTextLabel
onready var prompt_text = prompt.text

func _ready():
	rng.randomize()
	
	var angle = randi() % 90 + 1
	
	prompt_text = PromptList.get_prompt(rng.randi_range(minPalabras,maxPalabras))
	prompt.parse_bbcode(set_center_tags(prompt_text))
	
	velocity_x = speed * cos(angle)
	velocity_y = speed * sin(angle)
	
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	
	if animationSprite == 0:
		if velocity_x < 0:
			$AnimatedSprite.set_flip_v(true)
			$AnimatedSprite.position = Vector2(20,-10)
		else:
			$AnimatedSprite.set_flip_v(false)
			$RichTextLabel.set_position(Vector2(-157,45))
			$CollisionShape2D.get_shape().set_extents(Vector2(59,52.5))
			$CollisionShape2D.position = Vector2(-7,-9.5)
			$AreaMob/CollisionShape2D.get_shape().set_extents(Vector2(61,66.5))
			$AreaMob/CollisionShape2D.position = Vector2(-7,2.5)
	if animationSprite == 1:
		if velocity_x < 0:
			$AnimatedSprite.set_flip_v(true)
			$AnimatedSprite.position = Vector2(10,-10)
		else:
			$AnimatedSprite.set_flip_v(false)
			$RichTextLabel.set_position(Vector2(-162,31))
			$CollisionShape2D.get_shape().set_extents(Vector2(58,36.5))
			$CollisionShape2D.position = Vector2(-12,-9.5)
			$AreaMob/CollisionShape2D.position = Vector2(-12,4)
			$AreaMob/CollisionShape2D.get_shape().set_extents(Vector2(58,50))
	if animationSprite == 2:
		if velocity_x < 0:
			$AnimatedSprite.set_flip_v(true)
			$AnimatedSprite.position = Vector2(23,-10)
		else:
			$AnimatedSprite.set_flip_v(false)
			$RichTextLabel.set_position(Vector2(-158,28))
			$CollisionShape2D.get_shape().set_extents(Vector2(58,37))
			$CollisionShape2D.position = Vector2(-7,-12)
			$AreaMob/CollisionShape2D.position = Vector2(-8,2.5)
			$AreaMob/CollisionShape2D.get_shape().set_extents(Vector2(61,51.5))
		
	$AnimatedSprite.animation = mob_types[animationSprite]
	$AnimatedSprite.play()
	
func _process(_delta):
	set_linear_velocity(Vector2(ceil(velocity_x), ceil(velocity_y)))

# Retorna la palabra definida en el RichLabel
func get_prompt() -> String: 
	return prompt_text

func set_text_white(next_character_index: int):
	var white_text = get_bbcode_color_tag(white) + prompt_text.substr(0, next_character_index) + get_bbcode_end_color_tag()
	prompt.parse_bbcode(set_center_tags(white_text))

# Colorea la palabra seleccionada por el jugador
func set_next_character(next_character_index: int):
	var lime_text = get_bbcode_color_tag(lime) + prompt_text.substr(0, next_character_index) + get_bbcode_end_color_tag()
	var yellow_text = get_bbcode_color_tag(yellow) + prompt_text.substr(next_character_index, 1) + get_bbcode_end_color_tag()
	var red_text = ""

	if next_character_index != prompt_text.length():
		red_text = get_bbcode_color_tag(red) + prompt_text.substr(next_character_index + 1, prompt_text.length() - next_character_index + 1) + get_bbcode_end_color_tag()

	prompt.parse_bbcode(set_center_tags(lime_text + yellow_text + red_text))

# Le dan formato al texto del RichLabel (lo centran y colorean)
func set_center_tags(string_to_center: String):
	return "[center]" + string_to_center + "[/center]"
func get_bbcode_color_tag(color: Color) -> String:
	return "[color=#" + color.to_html(false) + "]"
func get_bbcode_end_color_tag() -> String:
	return "[/color]"

# Se utiliza para diferenciar los bordes superior/inferior de derecho/izquierdo
func _on_AreaMob_area_entered(area):
	if area.is_in_group("lateral"):
		velocity_x *= -1 #Si el area del enemigo entra, cambia de direccion
	if area.is_in_group("superiores"):
		velocity_y *= -1 
	if area.is_in_group("derecha"):
		$AnimatedSprite.set_flip_v(true)
		if animationSprite == 2:
			$AnimatedSprite.position = Vector2(23,-10)
		elif animationSprite == 1:
			$AnimatedSprite.position = Vector2(10,-10)
		elif animationSprite == 0:
			$AnimatedSprite.position = Vector2(20,-10)
	if area.is_in_group("izquierda"):
		$AnimatedSprite.set_flip_v(false)
		if animationSprite == 2:
			$AnimatedSprite.position = Vector2(-35,-10)
		elif animationSprite == 1:
			$AnimatedSprite.position = Vector2(-35,-10)
		elif animationSprite == 0:
			$AnimatedSprite.position = Vector2(-35,-10)
