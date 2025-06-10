extends Button

func _on_pressed() -> void:
	var creditos = load("res://UI/Scenes/CreditsScreen.tscn")
	get_tree().change_scene_to_packed(creditos)
