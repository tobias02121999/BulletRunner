// Die if the player isn't jumping
if (playerState != "JUMP" && playerState != "LEAP" && playerState != "DODGE" && playerState != "REEL")
	playerState = "FALL";
