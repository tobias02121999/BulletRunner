// Check if the spawner has spawned a weapon, or not
if (obj_client.clientId == 1 && obj_client.matchIsFull) // Let the first connected user determine the randomization of the weaponspawning
{
	if (place_meeting(x, y, obj_weapon)) 
		weaponIsSpawned = true;
	else
		weaponIsSpawned = false;

	// Set the weaponSpawn alarm
	if (!weaponIsSpawned && alarm[0] <= 0)
		alarm[0] = spawnDuration;
	
	if (!weaponIsSpawned && alarm[0] > 0 && alarm[0] <= 1)
	{
		// Instantiate the weapon (with the correct gunId)
		var obj = instance_create_layer(x, y, "Items", obj_weapon);
		obj.gunId = gunId;
		
		// Buffer
		scr_buffer_weaponSpawn_spawn(gunId);
	}
}
