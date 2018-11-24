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
