/// scr_player_states(playerState, playerId)

// Store the given arguments in temporary variables
var _playerState = argument0;
var _playerId = argument1;

// Run the corresponding code to the current playerState
switch (_playerState)
{
	case "DEFAULT": // The default playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, movementFriction, true, false);
		scr_player_animation();
		scr_player_attack();
		scr_player_dodge();
		scr_player_slide();
		scr_player_crouch();
		break;
		
	case "DODGE": // The dodge playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, dodgeFriction, false, false);
		scr_player_animation();
		scr_player_attack();
		break;
		
	case "LEAP": // The enhanced dodge playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, leapFriction, false, true);
		scr_player_animation();
		scr_player_attack();
		break;
		
	case "SLIDE": // The slide playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust , slideFriction, false, true);
		scr_player_animation();
		scr_player_attack();
		scr_player_dodge();
		scr_player_crouch();
		break;
		
	case "CROUCHING": // The crouching playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, movementFriction, false, true);
		scr_player_animation();
		scr_player_attack();
		scr_player_crouch();
		scr_player_jump();
		break;
		
	case "JUMP": // The jump playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, jumpFriction, false, false);
		scr_player_animation();
		scr_player_attack();
		break;
}
