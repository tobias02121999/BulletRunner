/// scr_player_states(playerState, playerId)

// Store the given arguments in temporary variables
var _playerState = argument0;
var _playerId = argument1;

// Run the corresponding code to the current playerState
switch (_playerState)
{
	case "DEFAULT": // The default playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed);
		scr_player_animation();
		break;
}
