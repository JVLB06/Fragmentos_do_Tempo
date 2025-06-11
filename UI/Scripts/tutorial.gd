extends Button

func _on_pressed() -> void:
	var tutorial = load("res://Fases/tutorial.tscn")
	get_tree().change_scene_to_packed(tutorial)
