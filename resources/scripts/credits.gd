extends ScrollContainer

@export var texto_node : RichTextLabel
@export_range(1,1000,0.1) var tempo_credito : float = 1
@export_range(0,1000,0.1) var margem : float = 1

@onready var margin : MarginContainer = $MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var tween = create_tween() #cria um twink, digo tween
