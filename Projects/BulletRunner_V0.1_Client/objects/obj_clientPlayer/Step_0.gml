/* Lerp towards the target X and Y position
var dist = distance_to_point(targetX, targetY);
var spd = dist * .5;

if (dist >= 5)
	move_towards_point(targetX, targetY, spd);
else
{
	x = targetX;
	y = targetY;
}
*/

x = targetX;
y = targetY;

// Instantiate a bullet if the client player is shooting
if (isShooting)
{
	// Instantiate a bullet and set its direction to face towards the mouse
	var obj = instance_create_layer(x, y, "Bullets", obj_bullet);
	obj.direction = gunDirection;
	obj.isAllied = false;
}

// Update the gun variables
scr_system_getGunStats(gunId);
