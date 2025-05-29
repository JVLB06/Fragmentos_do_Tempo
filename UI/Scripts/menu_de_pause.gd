extends Control


func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE  # Corrigido!
	get_tree().paused = true
	
func _on_continuar_pressed() -> void:
	print("Jogar")
	get_tree().paused = false
	queue_free()

func _on_sair_pressed() -> void:
	print("Sair")
	get_tree().paused = false
	get_tree().change_scene_to_file("res://UI/Scenes/menu_principal.tscn")
