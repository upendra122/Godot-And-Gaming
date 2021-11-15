extends Area2D

var obsticle_list=["sloth","family","kittens","maru","pile","pizza","couch"]
onready var obstacle_speed = rand_range(450,500)
func _ready():
	randomize()
	var current_obsticle=obsticle_list[randi()%obsticle_list.size()]
	$AnimatedSprite.animation=current_obsticle
func _process(delta):
	position.x-=obstacle_speed*delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Obstacle_body_entered(body):
	get_tree().call_group("Player","end_game")
