class_name Elemento

var index: int
var lingua: String
var tipo: String
var imagem
var som

func _ready():
	pass # Replace with function body.

func _setup(var i):
	index = i
	
func _getIndex():
	return index

func _setLingua(var l):
	lingua = l

func _getLingua():
	return lingua

func _setTipo(var t):
	tipo = t

func _getTipo():
	return tipo

func _setImagem(var i):
	imagem = i

func _getImagem():
	return imagem
	
func _setSom( var s):
	som = s

func _getSom():
	return som
