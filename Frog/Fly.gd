extends Area2D

signal addpoint
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process( delta: float) -> void:
	var random = randi() % 500
	position.x -= 10
	if position.x < 0:
		position.x = 2000 + random
		position.y = random +50
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Fly_area_entered(area):
	var random3 = randi() % 500
	position.x = 2000 + random3
	position.y = random3 + 50
	emit_signal("addpoint")
