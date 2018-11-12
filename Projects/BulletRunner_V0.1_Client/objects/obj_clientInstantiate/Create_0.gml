// Get the clients username
username = get_string("Username: ", "");

// Return to the menu if the given username is empty
if (username == "")
	room_goto(rm_menu);

// Set the client instantiate alarm
alarm[0] = 5;
