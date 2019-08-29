extends Node2D

var idioma

func _ready():
	$fundo/AnimatedSprite.play("padrao")

func _defineIdioma(idioma):
	if idioma == "ptBr":
		$btnAnimais.text = "ANIMAIS"
		$btnCores.text = "CORES"
		$btnFrutas.text = "FRUTAS"
		$btnLetras.text = "LETRAS"
		$btnNumeros.text = "NÚMEROS"
		#$btnVoltar.text = "VOLTAR"
	if idioma == "es":
		$btnAnimais.text = "ANIMALES"
		$btnCores.text = "COLORES"
		$btnFrutas.text = "FRUTAS"
		$btnLetras.text = "CARTAS"
		$btnNumeros.text = "NÚMEROS"
		#$btnVoltar.text = "VOLVER"
	if idioma == "enUs":
		$btnAnimais.text = "ANIMALS"
		$btnCores.text = "COLORS"
		$btnFrutas.text = "FRUITS"
		$btnLetras.text = "LETTERS"
		$btnNumeros.text = "NUMBERS"
		#$btnVoltar.text = "BACK"

func _on_btnVoltar_pressed():
	$somClick.play()
	self.get_parent()._habilita_botoes()
	self.queue_free()
	

func _on_btnAnimais_pressed():
	$somClick.play()
	self.get_parent()._setupJogo("Animais")
	self.queue_free()
	

func _on_btnLetras_pressed():
	$somClick.play()
	self.get_parent()._setupJogo("Letras")
	self.queue_free()

func _on_btnCores_pressed():
	$somClick.play()

func _on_btnFrutas_pressed():
	$somClick.play()

func _on_btnNumeros_pressed():
	$somClick.play()
	self.get_parent()._setupJogo("Numeros")
	self.queue_free()
