class_name BaseMonster extends CharacterBody2D

const VELOCITY:float = 3.0
var hp:int = 1
var level:int = 1

func _physics_process(_delta: float) -> void:
	if not is_on_floor():
		velocity.y += VELOCITY  * _delta 
	move_and_slide()

func _process(_delta: float) -> void:
	if hp <= 0:
		queue_free()

func damage(_damage_value) ->void:
	print(_damage_value)
	hp -= _damage_value
