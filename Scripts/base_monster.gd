class_name BaseMonster extends CharacterBody2D

@onready var label:Label = $Label

const VELOCITY:float = 3.0

var hp:int = 10
var level:int = 1

func _physics_process(_delta: float) -> void:
	if not is_on_floor():
		velocity.y += VELOCITY  * _delta 
	move_and_slide()

func _process(_delta: float) -> void:
	label.text = str(hp)
	if hp <= 0:
		queue_free()

func damage(_damage_value) ->void:
	hp -= _damage_value
