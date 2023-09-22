extends CanvasLayer

func _on_Menu_pressed():
	return get_tree().change_scene("res://Scenes/Main.tscn")
	
func _on_Video_pressed():
	$VideoPlayer.show()
	$VideoPlayer.play()
	
func _process(delta):
	if $VideoPlayer.is_playing():
		$VideoPlayer/TextureButton.show()
	else:
		$VideoPlayer/TextureButton.hide()
		
func _on_TextureButton_pressed():
	$VideoPlayer.hide()
