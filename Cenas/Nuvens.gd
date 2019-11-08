extends Node2D

var velocidade = [0,1,2,3,4,5]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	for i in 6:
		velocidade[i] = rand_range(0.1,0.5)
		_posicaoInicial(i)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in 5:
		get_node("nuvem" + str(i)).move_local_x(-velocidade[i], false)
		if get_node("nuvem" + str(i)).position.x < -70:
			_posicaoInicial(i)

func _posicaoInicial(i):
	get_node("nuvem" + str(i)).position.x = rand_range(880, 1200)
	get_node("nuvem" + str(i)).position.y = rand_range(36, 55)