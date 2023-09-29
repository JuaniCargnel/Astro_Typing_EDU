extends Control

func _ready():
	$AnimationPlayer.play("Inicial")

func _on_Timer_timeout():
	get_tree().call_deferred("change_scene", "res://Scenes/Main.tscn")
