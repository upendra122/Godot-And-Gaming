extends AnimatedSprite
var details_list=["leaf1","leaf2","leaf3","leaf4","grass1","grass2"]
func _ready():
	animation=details_list[randi()%details_list.size()]
func _process(delta):
	position.x-=400*delta
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

