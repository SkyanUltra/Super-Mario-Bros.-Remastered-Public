class_name PhantoPursuitNodes
extends Node

@export var nodes_to_delete: Array[Node]
@export var no_report := false
@export var force_on := false

func _ready() -> void:
	if force_on and Global.current_game_mode == Global.GameMode.NONE:
		Global.current_game_mode = Global.GameMode.PHANTO_PURSUIT
	if Global.current_game_mode != Global.GameMode.PHANTO_PURSUIT:
		queue_free()
