extends Marker2D

@export var scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_F):
		var new_scene := scene.instantiate() as Node2D# intancia
		# config
		new_scene.global_position = self.global_position
		get_tree().current_scene.add_child(new_scene)# arvore
		
	
