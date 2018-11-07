/// scr_player_getInput(playerId)

// Store the given arguments in temporary variables
var _playerId = argument0;

// Initialize the input variables
iMoveLeft = false;
iMoveRight = false;
iMoveUp = false;
iMoveDown = false;

// Update the input variables based on the given playerID
switch (_playerId)
{
	case 0: // Jack character playerInput
		iMoveLeft = keyboard_check(ord("A"));
		iMoveRight = keyboard_check(ord("D"));
		iMoveUp = keyboard_check(ord("W"));
		iMoveDown = keyboard_check(ord("S"));
		break;
}
