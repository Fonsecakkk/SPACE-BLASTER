extends CanvasLayer
###

var pontos = 0
var tempot = 0

func _ready():
	$pontos.text = str(pontos)
	$combustivel.value = 100

func tomaponto():
	pontos += 10
	$pontos.text = str(pontos)
	
func alteracombustivel(valor):
	$combustivel.value = valor


func _on_tempot_timeout():
	tempot = tempot + 1
	$tempo1.text = str(tempot)
	
