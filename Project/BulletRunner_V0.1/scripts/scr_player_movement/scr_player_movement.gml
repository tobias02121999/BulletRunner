/// scr_player_movement(movementSpeed, movementThrust, movementFriction, ignoreInput)

// Store the given arguments in temporary variables
var _movementSpeed = argument0;
var _movementThrust = argument1;
var _movementFriction = argument2;
var _ignoreInput = argument3;
	
// Run this code if the input is not being ignored
if (!_ignoreInput)
{
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
}
	
// Set a movementForce if the player is moving
if (isMoving)
	scr_force_setForce(_movementSpeed, _movementThrust);
	
// Apply friction to the player
scr_force_friction(_movementFriction);

// Apply the movementForce
scr_force_applyForce();
