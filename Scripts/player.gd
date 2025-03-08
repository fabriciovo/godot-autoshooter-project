class_name Player extends CharacterBody2D

@onready var shoot_timer:Timer = $Timer
var base_shoot: PackedScene = preload("res://Scene/base_shoot.tscn")
const SPEED:float = 300.0

func _ready() -> void:
	shoot_timer.wait_time = PlayerGlobalStats.shoot_wait_timer

func _physics_process(_delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * _delta
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()

func shoot() -> void:
	var base_shoot_inst = base_shoot.instantiate()
	base_shoot_inst.global_position = global_position
	get_tree().current_scene.get_node("Shoots").add_child(base_shoot_inst)

func _on_timer_timeout() -> void:
	shoot()
