extends Area2D
class_name Coin


signal collected(value : int)

@export var value : int

# O sinal body_entered do Area2D está conectado à função _on_body_entered, e por
#isso, a função será chamada quando um corpo entrar em contado com a moeda.
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("players"):
		collected.emit(value)
		CoinManager.notify_coin_collection(value)
		queue_free()
