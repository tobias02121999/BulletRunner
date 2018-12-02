// Reset the playerState when the dodge/leap/slide animation has ended
if (playerState == "DODGE" or playerState == "LEAP" or playerState == "SLIDE" or playerState == "JUMP")
{
	// Set the dodgeRespondTimer
	switch (playerState)
	{
		case "DODGE":
			isBurning = false;
			alarm[4] = 6;
			playerState = "HITPAUSE";
			break;
			
		case "LEAP":
			movementSpeedBoost = movementLeapSpeedBoost;
			isBurning = false;
			playerState = "DEFAULT";
			break;
			
		case "SLIDE":
			movementSpeedBoost = movementSlideSpeedBoost;
			alarm[1] = leapRespondTimer;
			playerState = "DEFAULT";
			break;
			
		case "JUMP":
			movementSpeedBoost = movementJumpSpeedBoost;
			playerState = "DEFAULT";
			break;
	}
}

if (playerState == "DIE")
{
	// Respawn the player
	playerSpawned = false;
	
	// Add to the matchScore of the other client
	obj_clientPlayer.matchScore++;
	
	var obj = instance_create_layer(x, y, "Instances", obj_playerCorpse);
	obj.sprite_index = sprite_index;
	obj.image_xscale = image_xscale;
	
	scr_buffer_player_corpse();
	
	playerState = "DEFAULT";
}
