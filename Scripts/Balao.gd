extends Node2D

var poped = false
var velocity = rand_range(0.5,2.5)
var coresPossiveis = ["ffffff","ec0000","00ff6a","ff00e8","3900ff","2cff00","5698b5",
					   "6238c8","f35619","c8f319","ff73c8","c7ff00","ebe832"]
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $balloon.get_rect().position.y > -150 and not poped:
		$balloon.rect_position.y = $balloon.get_rect().position.y - velocity
	else:
		if poped:
			$balloon.rect_position.y = $balloon.get_rect().position.y + 12
	if $balloon.get_rect().position.y < -150 or $balloon.get_rect().position.y > 480:
		get_parent().remove_child(self)
		
func _on_balloon_ready():
	$balloon.self_modulate = coresPossiveis[randi() % coresPossiveis.size()]

func _on_balloon_pressed():
	$balloon.set_normal_texture(load("res://Assets/Imagens/Balao/popBalao.png"))
	poped = true
	$balloon/pop.play()

