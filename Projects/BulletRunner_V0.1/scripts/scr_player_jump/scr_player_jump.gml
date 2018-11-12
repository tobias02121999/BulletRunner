/// scr_player_jump()

// Make the player dodge if the corresponding input has been given and they are currently moving
if (iJump && isMoving)
{
	// Reset the image index to start the dodge animation on image 0
	image_index = 0;
	
	// Update the playerState (either doding or leaping > enhanced dodge)
	playerState = "JUMP";
}
