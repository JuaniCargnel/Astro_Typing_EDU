extends Control

func _on_Timer_timeout():
	get_tree().call_deferred("change_scene", "res://Scenes/Main.tscn")
