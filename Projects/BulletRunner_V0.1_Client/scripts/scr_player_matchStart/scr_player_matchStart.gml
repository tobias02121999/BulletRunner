/// scr_player_matchStart()

// Check if the server is full, if so set the playerState to default (enable functionality)
if (obj_client.matchIsActive)
	playerState = "DEFAULT";
