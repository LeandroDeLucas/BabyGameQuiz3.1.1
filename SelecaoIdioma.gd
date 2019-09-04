extends Node2D

var selecaoTipo = preload("res://SelecaoTipo.tscn")
var lingua = "ptBr"

func _ready():
	$fundo/AnimatedSprite.play("selecaoLinguagem")
	$btnEspanhol.set_modulate("a4a4a4")
	$btnIngles.set_modulate("a4a4a4")
	$somBg.play()
	$rtgSelecao.margin_left = $btnPortugues.margin_left
	$rtgSelecao.margin_right = $rtgSelecao.margin_left + 162

func _on_btnPortugues_pressed():
	$somClick.play()
	$rtgSelecao.margin_left = $btnPortugues.margin_left
	$rtgSelecao.margin_right = $rtgSelecao.margin_left + 162
	$lblMensagem.text = "ESCOLHA O IDIOMA"
	$btnOk.text = "PRÓXIMO ->"
	$btnSair.text = "SAIR"
	$btnPortugues.set_modulate("ffffffff")
	$btnEspanhol.set_modulate("a4a4a4")
	$btnIngles.set_modulate("a4a4a4")
	lingua = "ptBr"
	
func _on_btnEspanhol_pressed():
	$somClick.play()
	$rtgSelecao.margin_left = $btnEspanhol.margin_left
	$rtgSelecao.margin_right = $rtgSelecao.margin_left + 162
	$lblMensagem.text = "ELIGE EL IDIOMA"
	$btnOk.text = "ADELANTE ->"
	$btnSair.text = "SALIR"
	$btnPortugues.set_modulate("a4a4a4")
	$btnEspanhol.set_modulate("ffffffff")
	$btnIngles.set_modulate("a4a4a4")
	lingua = "es"
	
func _on_btnIngles_pressed():
	$somClick.play()
	$rtgSelecao.margin_left = $btnIngles.margin_left
	$rtgSelecao.margin_right = $rtgSelecao.margin_left + 162
	$lblMensagem.text = "CHOOSE LANGUAGE"
	$btnOk.text = "NEXT ->"
	$btnSair.text = "QUIT"
	$btnPortugues.set_modulate("a4a4a4")
	$btnEspanhol.set_modulate("a4a4a4")
	$btnIngles.set_modulate("ffffffff")
	lingua = "enUs"
	
func _on_btnOk_pressed():
	$somClick.play()
	var slTp = selecaoTipo.instance()
	slTp._defineIdioma(lingua)
	_desabilitaBotoes()
	add_child(slTp)

func _desabilitaBotoes():
	$btnPortugues.set("disabled",true)
	$btnEspanhol.set("disabled",true)
	$btnIngles.set("disabled",true)
	$btnOk.set("disabled",true)
	$btnSair.set("disabled",true)
	$btnBg.set("disabled",true)
	
func _habilita_botoes():
	$btnPortugues.set("disabled",false)
	$btnEspanhol.set("disabled",false)
	$btnIngles.set("disabled",false)
	$btnOk.set("disabled",false)
	$btnSair.set("disabled",false)
	$btnBg.set("disabled",false)

func _setupJogo(tipoJogo: String):
	var jogo = preload("res://Game.tscn")
	var novoJogo = jogo.instance()
	novoJogo._defineIdioma(lingua)
	novoJogo._defineJogo(tipoJogo)
	add_child(novoJogo)

func _on_btnBg_pressed():
	$somClick.play()
	if $somBg.playing :
		$somBg.stop()
		$btnBg.set_button_icon(load("res://Assets/Imagens/btnPlayBg.png"))
	else:
		$somBg.play()
		$btnBg.set_button_icon(load("res://Assets/Imagens/btnMuteBg.png"))

func _on_btnSair_pressed():
	get_tree().quit()
