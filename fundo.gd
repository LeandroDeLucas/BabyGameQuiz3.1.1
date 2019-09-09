extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	$nuvem1.move_local_x(-0.5, false)
	$nuvem2.move_local_x(-0.6, false)
	if $nuvem1.position.x < -473:
		$nuvem1.position.x = 472
	if $nuvem2.position.x < -480:
		$nuvem2.position.x = 572