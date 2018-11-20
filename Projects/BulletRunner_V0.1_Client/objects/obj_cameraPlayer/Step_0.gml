// Lerp towards the player (using the current distance as speed modifier)
var targetX = obj_player.x;
var targetY = obj_player.y;
var dist = distance_to_point(targetX, targetY);
var dir = point_direction(x, y, targetX, targetY);
var lenX = lengthdir_x(movementSpeed * (dist * lerpPercentage) + .1, dir);
var lenY = lengthdir_y(movementSpeed * (dist * lerpPercentage) + .1, dir);

if (dist > distanceThreshold)
{
	x += lenX;
	y += lenY;
}

// Update the camera position
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(cam, viewMatrix);
