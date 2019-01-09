// Lerp towards the player (using the current distance as speed modifier)
var zoom

if (obj_player.iAim)
{
	zoom = 64;
	camZoom = .85;
}
else
{
	zoom = 12;
	camZoom = 1;
}

var targetX = obj_player.x + lengthdir_x(zoom, point_direction(x, y, mouse_x, mouse_y));
var targetY = obj_player.y + lengthdir_y(zoom, point_direction(x, y, mouse_x, mouse_y));
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

camera_set_view_mat(view_camera[0], viewMatrix);
camera_set_view_angle(view_camera[0], camAngle);
camera_set_view_size(view_camera[0], camWidth * camZoom, camHeight * camZoom);
camera_set_view_pos(view_camera[0], x - ((camWidth * camZoom) / 2), y - ((camHeight * camZoom) / 2));

// Reduce the gunSlot alpha over time
if (gunSlotAlpha >= gunSlotFadeSpeed)
	gunSlotAlpha -= gunSlotFadeSpeed;
else
	gunSlotAlpha = 0;
	
// Shake the camera around
if (alarm[0] > 0)
{
	x += random_range(-shakeIntensity, shakeIntensity);
	y += random_range(-shakeIntensity, shakeIntensity);
}

x += random_range(-(1 - (obj_player.hp / obj_player.maxHp)) * 2, (1 - obj_player.hp / obj_player.maxHp) * 2);
y += random_range(-(1 - (obj_player.hp / obj_player.maxHp)) * 2, (1 - obj_player.hp / obj_player.maxHp) * 2);

if (distortionIndex < sprite_get_number(spr_distortion) - 1)
	distortionIndex++;
else
	distortionIndex = 0;
	
// Set the camera angle based on the horizontal player speed
camAngle = obj_player.movementSpeedHorizontal + obj_player.knockbackX
