// Rotate the portal
image_angle += rotationSpeed;

// Pull the player in
var dist = distance_to_point(obj_player.x, obj_player.y);
var pullSpeed = clamp((pullRange * pullForce) - dist, 0, pullRange);

if (obj_player.portalTimer <= 0)
{
	if (dist <= pullRange)
	{
		var dir = point_direction(obj_player.x, obj_player.y, x, y);
	
		var lenX = lengthdir_x(pullSpeed, dir);
		var lenY = lengthdir_y(pullSpeed, dir);
	
		obj_player.x += lenX;
		obj_player.y += lenY;
		
		if (lenX > 0 or lenY > 0)
		{
			// Make the playerCamera shake
			obj_cameraPlayer.shakeIntensity = 7.5;
			obj_cameraPlayer.alarm[0] = 16;
		}
	}
}

// Teleport the player to the destination position if in range of portal
if (dist <= teleportRange && obj_player.portalTimer <= 0 && obj_player.playerState != "REEL")
{
	obj_player.x = destination.x;
	obj_player.y = destination.y;
	
	obj_player.portalTimer = portalTimerDuration;
}
