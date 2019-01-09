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
	
// Reduce the X knockback speed over time based on the friction
if (knockbackX <= -_friction)
	knockbackX += _friction;
	
if (knockbackX >= _friction)
	knockbackX -= _friction;

if (knockbackX > -_friction && knockbackX < _friction)
	knockbackX = 0;
	
// Reduce the Y knockback speed over time based on the friction
if (knockbackY <= -_friction)
	knockbackY += _friction;
	
if (knockbackY >= _friction)
	knockbackY -= _friction;

if (knockbackY > -_friction && knockbackY < _friction)
	knockbackY = 0;
