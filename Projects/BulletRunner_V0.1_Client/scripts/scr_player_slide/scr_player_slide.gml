/// scr_player_slide()

// Make the player slide if the corresponding input has been given and they are currently moving
if (iSlide && isMoving)
{
	// Reset the image index to start the dodge animation on image 0
	image_index = 0;
	
	// Make the playerCamera shake
	obj_cameraPlayer.shakeIntensity = 2.5;
	obj_cameraPlayer.alarm[0] = 5;
	
	// Update the playerState
	playerState = "SLIDE";
	
	if (!audio_is_playing(aud_dash))
		audio_play_sound(aud_dash, 0, false);
}
