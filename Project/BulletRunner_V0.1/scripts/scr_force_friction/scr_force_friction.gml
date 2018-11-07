/// scr_force_friction(friction)

// Store the given arguments in temporary variables
var _friction = argument0;

// Reduce the horizontal movementspeed over time based on the friction
if (movementSpeedHorizontal <= -_friction)
	movementSpeedHorizontal += _friction;
	
if (movementSpeedHorizontal >= _friction)
	movementSpeedHorizontal -= _friction;
	
if (movementSpeedHorizontal > -_friction && movementSpeedHorizontal < _friction)
	movementSpeedHorizontal = 0;

// Reduce the vertical movementspeed over time based on the friction
if (movementSpeedVertical <= -_friction)
	movementSpeedVertical += _friction;
	
if (movementSpeedVertical >= _friction)
	movementSpeedVertical -= _friction;
	
if (movementSpeedVertical > -_friction && movementSpeedVertical < _friction)
	movementSpeedVertical = 0;
