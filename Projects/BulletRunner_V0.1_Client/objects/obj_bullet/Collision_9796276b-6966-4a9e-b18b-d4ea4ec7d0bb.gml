// Destroy the bullet (if not ricochet)
if (!ricochet)
	instance_destroy();
else
{
	var rand = random_range(-180, 180);
	var dir;
	if (rand < 0)
		dir = clamp(rand, -180, -45);
	else
		dir = clamp(rand, 45, 180);
	
	direction += dir;
}
