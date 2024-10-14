extends KinematicBody2D

onready var alvo = get_node("/root/Main/Player")

var dpers = 1000
var speed = 50
var controledano = 0
var vida = 30

func _ready():
	pass

func _physics_process(delta):
	var dist = position.distance_to(alvo.position)
	if dist < dpers:
		var vel = (alvo.position - position).normalized()
		move_and_slide(vel*speed)
	if dist <= 57:
		$AnimatedSprite.animation = "explosao"
		$morte.start()
		if controledano == 0:
			alvo.tomadanoV()
			controledano=1
			
func tomar_dano_vampiro():
	vida -= 30
	if vida <=0:
		morte()


func morte():
	queue_free()
	

func _on_morte_timeout():
	morte()
