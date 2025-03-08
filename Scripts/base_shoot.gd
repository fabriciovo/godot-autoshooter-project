class_name BaseShoot extends CharacterBody2D


const VELOCITY_X = 300.0
const VELOCITY_Y = -400.0


func _physics_process(_delta: float) -> void:
	velocity.y = VELOCITY_Y 
	move_and_slide()

func _on_area_2d_body_entered(_body: Node2D) -> void:
	_body.damage(PlayerGlobalStats.damage)
