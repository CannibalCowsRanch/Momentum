extends RigidBody2D

onready var track = get_parent().get_node('playertrack')
export var health = 100
const MAX_VELOCITY = 2000

func _integrate_forces(state):
	# var thrust = track.position - self.position
	var thrust = Input.get_last_mouse_speed()
	state.set_linear_velocity(thrust)