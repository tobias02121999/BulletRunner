/// scr_player_states(playerState, playerId)

// Store the given arguments in temporary variables
var _playerState = argument0;
var _playerId = argument1;

// Run the corresponding code to the current playerState
switch (_playerState)
{
	case "FREEZE": // The freeze playerState
		scr_player_matchStart();
		break;
	
	case "HITPAUSE": // The hitPause playerState
		scr_player_getInput(_playerId);
		scr_player_animation();
		scr_player_movement(0, 0, 1000, false, false);
		scr_player_hitPause();
		break;
	
	case "DEFAULT": // The default playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, movementFriction, true, false);
		scr_player_animation();
		scr_player_attack();
		scr_player_dodge();
		scr_player_slide();
		scr_player_crouch();
		scr_player_switchGunSlot();
		scr_system_getGunStats(gunId[gunSlot]);
		break;
		
	case "DODGE": // The dodge playerState
		scr_player_getInput(_playerId);
		scr_player_movement(dodgeSpeed, dodgeSpeed, 0, true, true);
		scr_player_animation();
		scr_player_attack();
		scr_player_switchGunSlot();
		scr_system_getGunStats(gunId[gunSlot]);
		break;
		
	case "LEAP": // The enhanced dodge playerState
		scr_player_getInput(_playerId);
		scr_player_movement(leapSpeed, leapSpeed, 0, true, true);
		scr_player_animation();
		scr_player_attack();
		scr_player_switchGunSlot();
		scr_system_getGunStats(gunId[gunSlot]);
		break;
		
	case "SLIDE": // The slide playerState
		scr_player_getInput(_playerId);
		scr_player_movement(slideSpeed, slideSpeed, 0, true, true);
		scr_player_animation();
		scr_player_attack();
		scr_player_dodge();
		scr_player_crouch();
		scr_player_switchGunSlot();
		scr_system_getGunStats(gunId[gunSlot]);
		break;
		
	case "CROUCHING": // The crouching playerState
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, movementFriction, false, true);
		scr_player_animation();
		scr_player_attack();
		scr_player_crouch();
		scr_player_jump();
		scr_player_switchGunSlot();
		scr_system_getGunStats(gunId[gunSlot]);
		break;
		
	case "JUMP": // The jump playerState
		scr_player_getInput(_playerId);
		scr_player_movement(jumpSpeed, jumpSpeed, 0, true, true);
		scr_player_animation();
		break;
		
	case "DIE": // Die
		scr_player_getInput(_playerId);
		scr_player_movement(movementSpeed, movementThrust, movementFriction, false, true);
		scr_player_animation();
		scr_player_reset();
		break;
		
	case "REEL": // Reeling towards a reelPoint
		scr_player_getInput(_playerId);
		scr_player_animation();
		scr_player_attack();
		scr_player_switchGunSlot();
		scr_player_reel(reelSpeed);
		scr_system_getGunStats(gunId[gunSlot]);
		break;
}
