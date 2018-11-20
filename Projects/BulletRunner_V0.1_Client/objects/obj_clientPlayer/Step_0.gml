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

// Update the gun variables
scr_system_getGunStats(gunId);
