extends Control

@onready var scroll = $ScrollContainer
@onready var label = $ScrollContainer/RichTextLabel
@onready var musica = $AudioStreamPlayer

func _ready():
	scroll.scroll_vertical = 0
	await get_tree().create_timer(1.0).timeout
	var distance = label.size.y - scroll.size.y
	if distance > 0:
		create_tween().tween_property(scroll, "scroll_vertical", distance, 200.0)
	
func _process(delta: float) -> void:
	if not musica.is_playing():
		trocar_de_fase()
func trocar_de_fase():
	var cutscene = preload("res://UI/Scenes/transition_scene.tscn").instantiate()
	# Adiciona no root, não localmente
	get_tree().get_root().add_child(cutscene)
	# Inicia troca
	cutscene.wait_then_change("res://UI/Scenes/menu_principal.tscn")
