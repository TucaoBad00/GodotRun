extends Node


signal coin_collected(value : int)


func notify_coin_collection(value : int):
	coin_collected.emit(value)
