// Spawn the fire
if (!fireSpawned && isAllied && image_index >= 2)
{
	var posX;
	var posY;
	
	for (var i = 0; i < fireAmount; i++)
	{
		posX = x + random_range(-fireMaxOffset, fireMaxOffset);
		posY = y + random_range(-fireMaxOffset, fireMaxOffset);

		var desAlarm = round(random_range(50, 100));
		
		var obj = instance_create_layer(posX, posY, "Instances", obj_fire);
		obj.alarm[0] = desAlarm;
		
		scr_buffer_explosion_fire(posX, posY, desAlarm);
	}
	
	fireSpawned = true;
}
