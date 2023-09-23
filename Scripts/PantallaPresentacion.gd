extends Control



func _on_AnimationPlayer_animation_finished(anim_name):
	match anim_name:
		"Inicio":
			get_tree().call_deferred("change_scene", "res://Scenes/Main.tscn")

func _on_Timer_timeout():
	get_node("AnimationPlayer").play("Inicio")
