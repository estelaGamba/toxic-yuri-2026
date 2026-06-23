extends ScrollContainer

#obigada ao canal guara programador

@export var texto_node : RichTextLabel
@export_range(1,1000,0.1) var tempo_credito : float = 1
@export_range(0,1000,0.1) var margem : float = 1

@onready var margin : MarginContainer = $MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween = create_tween() #cria um twink, digo tween
	await get_tree().create_timer(0.01).timeout
	var text_box_size = texto_node.size.y
	var window_size = DisplayServer.window_get_size().y
	var scroll_amound = ceil(text_box_size * 3/4 + window_size * 2 + margem) 
	
	margin.add_theme_constant_override("margin_top", window_size + margem)
	margin.add_theme_constant_override("margin_bottom", window_size + margem)
	
	tween.tween_property(
		self,
		"scroll_vertical",
		scroll_amound,
		tempo_credito
	)
	
	tween.finished.connect(_acabou)
	tween.play()

#func _pular() -> void:
	#if Input.is_action_just_pressed("click"):
		#_acabou()

func _acabou() -> void:
	get_tree().change_scene_to_file("res://resources/scene/main menu.tscn")
