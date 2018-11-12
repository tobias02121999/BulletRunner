/// scr_force_setForce(force, thrust)

// Store the given arguments in temporary variables
var _force = argument0;
var _thrust = argument1;

// Apply force towards the right
if (movementDirection = 0 or movementDirection = 45 or movementDirection = 315)
{
	if (movementSpeedHorizontal <= _force - _thrust)
		movementSpeedHorizontal += _thrust;
	else
		movementSpeedHorizontal =  _force;
}

// Apply force towards the left
if (movementDirection = 135 or movementDirection = 180 or movementDirection = 225)
{
	if (movementSpeedHorizontal >= -_force + _thrust)
		movementSpeedHorizontal -= _thrust;
	else
		movementSpeedHorizontal =  -_force;
}

// Appy force upwards
if (movementDirection = 45 or movementDirection = 90 or movementDirection = 135)
{
	if (movementSpeedVertical >= -_force + _thrust)
		movementSpeedVertical -= _thrust;
	else
		movementSpeedVertical =  -_force;
}

// Apply force downwards
if (movementDirection = 225 or movementDirection = 270 or movementDirection = 315)
{
	if (movementSpeedVertical <= _force - _thrust)
		movementSpeedVertical += _thrust;
	else
		movementSpeedVertical =  _force;
}
