extends Node2D

var velocidade = [0,1,2]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	for i in 3:
		velocidade[i] = rand_range(0.01,0.1)
		_posicaoInicial(i)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in 3:
		get_node("nuvem" + str(i)).move_local_x(-velocidade[i], false)
		if get_node("nuvem" + str(i)).position.x < -70:
			_saiDaTela(i)

func _posicaoInicial(i):
	get_node("nuvem" + str(i)).position.x = rand_range(0, 900)
	get_node("nuvem" + str(i)).position.y = rand_range(36, 55)

func _saiDaTela(i):
	get_node("nuvem" + str(i)).position.x = rand_range(880, 1100)