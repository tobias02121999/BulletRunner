/// scr_player_movement(movementSpeed)

// Store the given arguments in temporary variables
var _movementSpeed = argument0;

// Set the movement direction for the player according to the given input
scr_player_getDirection();
	
// Tell the player if it is currently moving or not (based on the given input)
if (iMoveLeft or iMoveRight or iMoveUp or iMoveDown)
	isMoving = true;
else
	isMoving = false;
	
// Set the players facingDirection
if (iMoveLeft)
	facingDirection = -1;
	
if (iMoveRight)
	facingDirection = 1;
	
// Set a movementForce if the player is moving
if (isMoving)
	scr_force_setForce(movementSpeed, movementThrust);
	
// Apply friction to the player
scr_force_friction(movementFriction);

// Apply the movementForce
scr_force_applyForce();
