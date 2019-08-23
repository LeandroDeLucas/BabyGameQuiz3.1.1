extends Node2D

var canMove = true
var velocity = rand_range(0.5,4.0)
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $balloon.get_rect().position.y > -110 and canMove:
		$balloon.rect_position.y = $balloon.get_rect().position.y - velocity
	else:
		if not($balloon.get_rect().position.y <= -110):
			$balloon.rect_position.y = $balloon.get_rect().position.y + 10

func _on_balloon_ready():
	var x = ["ffffff","ec0000","1ed86b","eb15ca","7d3571","3f3eff","49ff23","5698b5","6238c8","f35619","c8f319","ff73c8","c7ff00","ebe832"]
	var y: String = x[randi() % 14]
	$balloon.self_modulate = y

func _on_balloon_pressed():
	$balloon.set_normal_texture(load("res://Assets/Imagens/Animacao/popBalloon.png"))
	canMove = false
	$balloon/pop.play()
