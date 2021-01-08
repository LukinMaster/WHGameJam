extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal Finish;
signal Death;

var xPos : int = 0;
var yPos : int = 0;

const SPEED : float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready():
	xPos = floor(position.x / Globals.BLOCK_WIDTH) as int;
	yPos = floor(position.x / Globals.BLOCK_WIDTH) as int;
	pass # Replace with function body.

func _process(delta):
	var deltaSpeed = SPEED*delta 
	var desiredPosition  = Vector2(xPos*Globals.BLOCK_WIDTH, yPos*Globals.BLOCK_HEIGHT)
	
	# X
	if (position.x < desiredPosition.x):
		position.x += deltaSpeed;
		
	if (position.x > desiredPosition.x):
		position.x -= deltaSpeed;	
		
	# Y
	if (position.y < desiredPosition.y):
		position.y += deltaSpeed;
		
	if (position.y > desiredPosition.y):
		position.y -= deltaSpeed;	
		
	# Align
	if (abs(position.x - desiredPosition.x) < deltaSpeed):
		position.x = xPos * Globals.BLOCK_WIDTH

	if (abs(position.y - desiredPosition.y) < deltaSpeed):
		position.y = yPos * Globals.BLOCK_WIDTH
			
	# Move to next location
	
	if (position - desiredPosition).length() <= deltaSpeed:
		var lvlMap = get_node("/root/LevelMap");
		var objOnLeft = lvlMap.get_at_position(xPos-1, yPos)
		var objOnRight = lvlMap.get_at_position(xPos+1, yPos)
		var objOnTop = lvlMap.get_at_position(xPos, yPos-1)
		var objOnBottom = lvlMap.get_at_position(xPos-1, yPos+1)
		
		if (Input.is_action_pressed("ui_right") && (objOnRight == null || !objOnRight.is_solid())):
			xPos += 1
			return
		if (Input.is_action_pressed("ui_left") && (objOnLeft == null || !objOnLeft.is_solid())):
			xPos -= 1
			return
		if (Input.is_action_pressed("ui_down") && (objOnBottom == null || !objOnBottom.is_solid())):
			yPos += 1
			return
		if (Input.is_action_pressed("ui_up") && (objOnTop == null || !objOnTop.is_solid())):
			yPos -= 1
			return
