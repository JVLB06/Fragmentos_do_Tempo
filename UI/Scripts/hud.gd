extends CanvasLayer

func atualizar_vida(vida: int):
	$MarginContainer/HBoxContainer/TextureProgressBar.value = vida

func atualizar_item(item: int):
	$MarginContainer/HBoxContainer/Label.text = "Itens: %d" % item

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		pausar()

func pausar():
	get_tree().paused = not get_tree().paused
	$Control.visible = get_tree().paused

func _on_Continuar_pressed():
	pausar()

func _on_Sair_pressed():
	get_tree().quit()

@onready var coracoes = [
	$MarginContainer/HBoxContainer/coracaoCheio,
	$MarginContainer/HBoxContainer/coracaoVazio
]

var coracao_cheio = preload("res://Assets/UI/sprites/coracaoCheio.tres")
var coracao_vazio = preload("res://Assets/UI/sprites/coracaoVazio.tres")

func atualizar_coracao(vida_atual: int):
	for i in range(coracoes.size()):
		coracoes[i].texture = coracao_cheio if i < vida_atual else coracao_vazio
		
