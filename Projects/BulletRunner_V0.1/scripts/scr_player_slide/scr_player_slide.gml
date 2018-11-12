/// scr_player_slide()

// Make the player slide if the corresponding input has been given and they are currently moving
if (iSlide && isMoving)
{
	// Reset the image index to start the dodge animation on image 0
	image_index = 0;
	
	// Update the playerState
	playerState = "SLIDE";
}
