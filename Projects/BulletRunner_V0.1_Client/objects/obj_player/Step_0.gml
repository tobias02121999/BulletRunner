// Run the current playerState
scr_player_states(playerState, playerId);

// Send the buffer to the server
scr_buffer_player_main();

// Update the playerSpawn
scr_player_setSpawn();

// Die and respawn
if (hp <= 0)
{
	// Respawn the player
	playerSpawned = false;
	
	// Restore the playerHp
	hp = maxHp;
	
	// Add to the matchScore of the other client
	obj_clientPlayer.matchScore++;
}
