extends Node2D


func _ready() -> void:
	Dialogic.start("chapter 1")
	Dialogic.signal_event.connect(_on_dialogic_signal)
	pass

func _on_dialogic_signal(argument:String):
	if argument == "cabou":
		get_tree().change_scene_to_file("res://resources/scene/credits.tscn")
		#quando acabar rodar os creditos

func sair_do_jogo() -> void:
	pass
