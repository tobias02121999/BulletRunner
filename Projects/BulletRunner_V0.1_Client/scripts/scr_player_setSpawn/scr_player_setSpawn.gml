/// scr_player_setSpawn()

// Set the playerSpawn based on the unique clientId and move the player to the spawn if required
switch (obj_client.clientId)
{
	case 1:
		// Set the playerSpawn position
		playerSpawnX = obj_playerSpawn_1.x;
		playerSpawnY = obj_playerSpawn_1.y;
		
		// Move the player to the playerSpawn position
		if (!playerSpawned)
		{
			x = playerSpawnX;
			y = playerSpawnY;
			playerSpawned = true; // Tell the player that it has been spawned
		}
		break;
		
	case 2:
		// Set the playerSpawn position
		playerSpawnX = obj_playerSpawn_2.x;
		playerSpawnY = obj_playerSpawn_2.y;
		
		// Move the player to the playerSpawn position
		if (!playerSpawned)
		{
			x = playerSpawnX;
			y = playerSpawnY;
			playerSpawned = true; // Tell the player that it has been spawned
		}
		break;
}
