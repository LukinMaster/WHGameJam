extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal Finish;
signal Death;



# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("/root/LevelMap").map = self
	pass # Replace with function body.

