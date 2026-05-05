extends Node2D


@export var speed : float = 300


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Leitura direta do input, usando as teclas para esquerda e direita
	# Apesar de útil para prototipar e testar mecânicas, recomenda-se o uso de Actions
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += speed * delta
	if Input.is_key_pressed(KEY_LEFT):
		position.x -= speed * delta
