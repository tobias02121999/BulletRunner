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
