extends Area2D

var speed = 10.0
var damage = 1
var velocity= Vector2.ZERO


func _ready():
	velocity = Vector2(0,-speed)



func _physics_process(delta):
	position = position + velocity


func _on_body_entered(body):
	queue_free()


func _on_timer_timeout():
	queue_free()
