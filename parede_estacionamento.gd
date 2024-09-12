extends Node2D
@onready var main = get_parent()

func _ready() -> void:
	# Conecta o sinal 'area_entered' apenas se ainda não estiver conectado
	$Area2D.connect("area_entered", Callable(self, "_on_area_2d_area_entered"))
	

func _process(_delta: float) -> void:
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "hitboxcarro":  # Certifique-se de que o nome está correto
		print("Colisão detectada com o carro!")
		main.mostrar_popup_e_reposicionar_carro()
