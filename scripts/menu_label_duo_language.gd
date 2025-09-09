extends Label3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = TranslationServer.get_translation_object("en").get_message("MENU") + "\n" + \
			TranslationServer.get_translation_object("ru").get_message("MENU")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
