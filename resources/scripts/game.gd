extends Node2D


func _ready() -> void:
	Dialogic.start("intro")
	Dialogic.signal_event.connect(_on_dialogic_signal)
	pass

func _on_dialogic_signal(argument:String):
	if argument == "cabou":
		get_tree().quit()
		#quando acabar rodar os creditos
		#mas agora que ainda nao ta terminado so fechar o jogo
		#jumpscare de fechar jogo

func sair_do_jogo() -> void:
	pass
