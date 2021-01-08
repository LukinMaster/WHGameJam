extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var map : Array = [[null]];

func clear_level(width : int, height : int):
	map.clear()
	for i in range(height):
		var tmp : Array = []
		tmp.resize(width)
		map.append(tmp)

func get_at_position(x : int, y : int):
	if (x < 0 || y < 0 || y >= map.size()):
		return null
	if x <= map[y].size():
		return null
		
	return map[y][x]
	
func register_at_position(x : int, y : int, obj : LvlObject):
	if (x < 0 || y < 0 || y >= map.size()):
		return
	if x <= map[y].size():
		return
		
	map[y][x] = obj

# Called when the node enters the scene tree for the first time.
func _ready():
	clear_level(1920/30, 1080/30)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
