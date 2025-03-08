extends Node2D

var base_monster:PackedScene = preload("res://Scene/base_monster.tscn")

func _on_timer_timeout() -> void:
	randomize()
	var base_monster_inst = base_monster.instantiate()
	base_monster_inst.global_position.y = 0
	base_monster_inst.global_position.x = randf_range(0, 120)
	get_tree().current_scene.get_node("Monsters").add_child(base_monster_inst)
	
