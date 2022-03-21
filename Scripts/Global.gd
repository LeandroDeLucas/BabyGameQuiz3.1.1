extends Node2D
var score_file = "user://GameScore.save"
var pontuacaoGeral

func load_score():
    var f = File.new()
    if f.file_exists(score_file):
        f.open(score_file, File.READ)
        pontuacaoGeral = f.get_var()
        f.close()
    else:
        pontuacaoGeral = 0

func save_score():
    var f = File.new()
    f.open(score_file, File.WRITE)
    f.store_var(pontuacaoGeral)
    f.close()