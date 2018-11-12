/// scr_button_onClick(buttonId)

// Store the given arguments in temporary variables
var _buttonId = argument0;

// Run the action corresponding to the given buttonID
switch (_buttonId)
{
	case 0: // Connect to the server and join the match
		room_goto(rm_connect);
		break;
		
	case 1: // Quit the game
		game_end();
		break;
}
