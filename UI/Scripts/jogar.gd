extends Button

func _on_pressed() -> void:
	var fase1 = load("res://Fases/level_1.tscn")
	get_tree().change_scene_to_packed(fase1)
