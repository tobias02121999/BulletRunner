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
			
			// Make the playerCamera shake
			obj_cameraPlayer.shakeIntensity = 2.5;
			obj_cameraPlayer.alarm[0] = 5;
			break;
			
		case "LEAP":
			movementSpeedBoost = movementLeapSpeedBoost;
			isBurning = false;
			playerState = "DEFAULT";
			
			// Make the playerCamera shake
			obj_cameraPlayer.shakeIntensity = 2.5;
			obj_cameraPlayer.alarm[0] = 5;
			break;
			
		case "SLIDE":
			movementSpeedBoost = movementSlideSpeedBoost;
			alarm[1] = leapRespondTimer;
			playerState = "DEFAULT";
			break;
			
		case "JUMP":
			movementSpeedBoost = movementJumpSpeedBoost;
			playerState = "DEFAULT";
			
			// Make the playerCamera shake
			obj_cameraPlayer.shakeIntensity = 2.5;
			obj_cameraPlayer.alarm[0] = 5;
			break;
	}
}

if (playerState == "DIE")
{
	// Respawn the player
	playerSpawned = false;
	
	var obj = instance_create_layer(x, y, "Instances", obj_playerCorpse);
	obj.sprite_index = sprite_index;
	obj.image_xscale = image_xscale;
	
	scr_buffer_player_death();
	
	playerState = "DEFAULT";
}
