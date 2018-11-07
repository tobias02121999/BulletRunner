/// scr_player_states(playerState, playerId)

// Store the given arguments in temporary variables
var _playerState = argument0;
var _playerId = argument1;

// Run the corresponding code to the current playerState
switch (_playerState)
{
	case "DEFAULT": // The default playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, movementFriction, false);
		scr_player_animation();
		scr_player_attack();
		scr_player_dodge();
		break;
		
	case "DODGE": // The dodge playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, movementFriction * 2.125, true);
		scr_player_animation();
		scr_player_attack();
		break;
}
