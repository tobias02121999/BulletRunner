// Reset the playerState when the dodge/leap/slide animation has ended
if (playerState == "DODGE" or playerState == "LEAP" or playerState == "SLIDE" or playerState == "JUMP")
{
	// Set the dodgeRespondTimer
	switch (playerState)
	{
		case "DODGE":
			movementSpeedBoost = movementDodgeSpeedBoost;
			break;
			
		case "LEAP":
			movementSpeedBoost = movementLeapSpeedBoost;
			break;
			
		case "SLIDE":
			movementSpeedBoost = movementSlideSpeedBoost;
			alarm[1] = leapRespondTimer;
			break;
			
		case "JUMP":
			movementSpeedBoost = movementJumpSpeedBoost;
			break;
	}
	
	playerState = "DEFAULT";
}

if (playerState == "DIE")
{
	// Respawn the player
	playerSpawned = false;
	
	// Restore the playerHp
	hp = maxHp;
	
	// Add to the matchScore of the other client
	obj_clientPlayer.matchScore++;
	
	var obj = instance_create_layer(x, y, "Instances", obj_playerCorpse);
	obj.sprite_index = sprite_index;
	obj.image_xscale = image_xscale;
	
	scr_buffer_player_corpse();
	
	playerState = "DEFAULT";
}
