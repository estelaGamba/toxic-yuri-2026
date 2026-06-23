extends Control

@onready var settings: Control = $settings
@onready var main_bottons: VBoxContainer = $"MarginContainer/main bottons"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	settings.visible = false

#func _process(delta: float) -> void:
	#pass

func _on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://resources/scene/game.tscn")

func _on_endings_pressed() -> void: 
	#main_bottons.visible = false
	pass # Replace with function body.

func _on_settings_pressed() -> void: #abre o menu das confings
	settings.visible = true
	pass # Replace with function body.

func _on_exit_pressed() -> void:
	get_tree().quit()  #jumpscare de fechar jogo

	
