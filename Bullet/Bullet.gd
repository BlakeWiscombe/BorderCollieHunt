extends KinematicBody2D

var speed = 500
func _ready():
	set_physics_process(true)

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(-speed*delta, 0))
	if (collidedObject):
		print(collidedObject.collider.name)
		if "Enemy" in collidedObject.collider.name:
			collidedObject.get_collider().queue_free()
			GlobalVariables.scoringInformation["currentScore"] +=10
			print (GlobalVariables.scoringInformation["currentScore"])
		queue_free()		
