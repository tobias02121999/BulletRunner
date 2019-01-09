// Destroy the bullet
if (other.isAllied)
{
	// Spawn the blood objects
	var rand = round(random_range(5, 20));
	for (var i = 0; i < rand; i++)
	{
		var int = instance_create_layer(x, y, "Effects", obj_blood);
		int.direction = other.direction + random_range(-25, 25);
	}
	
	// Destroy the bullet
	with (other) instance_destroy();
}
