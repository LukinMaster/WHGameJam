extends Node2D
class_name LvlObject

func get_xi() -> int:
	return floor(position.x / Globals.BLOCK_WIDTH) as int;
	
func get_yi() -> int:
	return floor(position.y / Globals.BLOCK_HEIGHT) as int;

# returns true, if it was destroyed
func destroy_by_bomb() -> bool:
	return false

func is_solid() -> bool:
	return true

func register():
	var lvlMap = get_node("/root/LevelMap");
	lvlMap.register_at_position(get_xi(), get_yi(), self)

# Called when the node enters the scene tree for the first time.
func _ready():
	register()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
