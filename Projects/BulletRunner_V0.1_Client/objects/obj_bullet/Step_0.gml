//
if (line)
{
	// 
	var lenX = lengthdir_x(1, direction);
	var lenY = lengthdir_y(1, direction);

	while (!done)
	{
		if (place_free(targetX + lenX, targetY + lenY))
		{
			targetX += lenX;
			targetY += lenY;
		}
		else
		{
			// Make the player get hit (take damage)
			with (obj_player) 
				scr_player_hit(false);
				
			done = true;
		}
	}
	
	image_alpha -= .05;
}
else
{
	// Decrease the range the bullet can travel over time
	range--;

	// Destroy the bullet if its reached its max range
	if (range <= 0)
		instance_destroy();
	
	if (destroyOnMousePosition)
	{
		var dist = distance_to_point(mousePositionX, mousePositionY);

		if (dist <= 1)
			instance_destroy();
	}

	// Rotate the bullet towards its direction
	image_angle = direction;
}
