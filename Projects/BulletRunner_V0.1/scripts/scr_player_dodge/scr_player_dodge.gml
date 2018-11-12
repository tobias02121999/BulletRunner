/// scr_player_dodge()

// Make the player dodge if the corresponding input has been given and they are currently moving
if (iDodge && isMoving)
{
	// Reset the image index to start the dodge animation on image 0
	image_index = 0;
	
	// Update the playerState (either doding or leaping > enhanced dodge)
	if (alarm[1] <= 0)
		playerState = "DODGE";
	else
		playerState = "LEAP";
}
