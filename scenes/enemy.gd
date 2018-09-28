extends Node2D
export var health = 10
const MAX_VELOCITY = 3000
const MAX_VELOCITY_SQUARED = 9000000

func _on_body_body_entered(body):
	#var kinetic_energy = min(body.linear_velocity.length_squared(), MAX_VELOCITY_SQUARED) * body.mass / 2
	#health -= kinetic_energy / (MAX_VELOCITY_SQUARED * body.mass / 2) * 10
	var momentum = body.mass * min(MAX_VELOCITY, body.linear_velocity.length())
	health -= momentum / (MAX_VELOCITY * body.mass) * 10
	$health_label.bbcode_text = String(int(health))
	if health <= 0:
		queue_free()