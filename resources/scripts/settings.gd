extends Control

@onready var settings: Control = $"."



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

func _on_button_pressed() -> void:
	settings.visible = false
