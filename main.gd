extends Node2D

# Refere-se ao popup e ao carro, ajuste os nomes conforme necessário
@onready var popup_perdeu = $Popup
@onready var carro = $Sprite2D
@onready var timer = $Timer

# Função para mostrar o popup e reposicionar o carro
func mostrar_popup_e_reposicionar_carro():
	# Mostra o popup
	
	popup_perdeu.popup_centered()
	
	timer.start()
	
	# Reposiciona o carro para a posição inicial ou escolhida
	# Ajuste a posição conforme necessário
	carro.position = Vector2(111, 319)  # Posição inicial do carro
	carro.rotation = 90  # Resetar a rotação do carro, se necessário
	
	# Função chamada quando o Timer atinge o tempo


func _on_timer_timeout() -> void:
	popup_perdeu.hide()
	
