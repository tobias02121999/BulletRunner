// Lerp towards the player (using the current distance as speed modifier)
var targetX;
var targetY;

if (obj_player.iAim)
{
	targetX = round((obj_player.x + mouse_x) / 2);
	targetY = round((obj_player.y + mouse_y) / 2);
	
	camZoom = .85;
}
else
{
	targetX = obj_player.x;
	targetY = obj_player.y;
	
	camZoom = 1;
}

var dist = distance_to_point(targetX, targetY);
var dir = point_direction(x, y, targetX, targetY);
var lenX = lengthdir_x(movementSpeed * (dist * lerpPercentage) + .1, dir);
var lenY = lengthdir_y(movementSpeed * (dist * lerpPercentage) + .1, dir);

if (dist > distanceThreshold)
{
	x += lenX;
	y += lenY;
}

// Update the camera
var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projectionMatrix = matrix_build_projection_ortho(camWidth * camZoom, camHeight * camZoom, 1, 32000);

camera_set_view_mat(cam, viewMatrix);
camera_set_proj_mat(cam, projectionMatrix);
