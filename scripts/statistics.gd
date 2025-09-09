extends Label3D

@onready var player = %Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var target_position = Vector3(player.global_position.x, global_position.y, player.global_position.z)
	look_at(target_position, Vector3(0,1,0), true)
	pass
