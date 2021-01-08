extends Node2D


const BLOCK_WIDTH = 60;
const BLOCK_HEIGHT = 60;

func get_xi() -> int:
	return floor(position.x / BLOCK_WIDTH) as int;
	
func get_yi() -> int:
	return floor(position.y / BLOCK_HEIGHT) as int;

func destroy_by_bomb():
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
