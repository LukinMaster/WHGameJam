extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var map : Array = [];

func clear_level(width : int, height : int):
	map.clear()
	for i in range(height):
		var tmp : Array = []
		tmp.resize(width)
		map.append(tmp)



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
