/// scr_player_crouch()

// Make the player crouch if the corresponding input has been given and they are currently moving
if (iCrouch)
{
	// Reset the image index to start the dodge animation on image 0
	image_index = 0;
	
	// Update the playerState
	playerState = "CROUCHING";
}
else
{
	// Reset the playerState back to default
	if (playerState == "CROUCHING")
		playerState = "DEFAULT";
}
