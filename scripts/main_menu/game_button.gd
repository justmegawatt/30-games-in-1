extends TextureRect

@export var game_name: String
@export var game_number: String

#current games made
var starting_ui = preload("res://scenes/starting_ui.tscn")

func _ready() -> void:
	$BG/LabelTitle.text = game_name
	$BG/LabelNumber.text = "#" + game_number

func _on_button_play_pressed() -> void:
	var picked_game
	if game_name == "starting ui":
		picked_game = starting_ui.instantiate()
	$"../../../../../..".add_child(picked_game) #Main
	picked_game.global_position = Vector2(0, 0)
	$"../../../..".visible = false #CanvasLayer
	
