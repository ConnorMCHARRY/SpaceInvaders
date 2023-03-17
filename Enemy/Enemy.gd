extends KinematicBody2D

func _ready():
	$CollisionShape2D.connect("area_entered", self, "_colliding")

func _colliding(area):
	print (area)
	if area.is_in_group("right"):
		get_parent().global_position.y += 10
		get_parent().speed = get_parent().speed * -1
