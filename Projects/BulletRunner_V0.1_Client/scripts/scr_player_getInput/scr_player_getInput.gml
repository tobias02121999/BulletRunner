/// scr_player_getInput(playerId)

// Store the given arguments in temporary variables
var _playerId = argument0;

// Initialize the input variables
iMoveLeft = false;
iMoveRight = false;
iMoveUp = false;
iMoveDown = false;
iAttack = false;
iDodge = false;
iSlide = false;
iCrouch = false;
iJump = false;
iGunSlotNext = false;
iGunSlotPrevious = false;
iAim = false;

// Update the input variables based on the given playerID
switch (_playerId)
{
	case 0: // Jack character playerInput
		iMoveLeft = keyboard_check(ord("A"));
		iMoveRight = keyboard_check(ord("D"));
		iMoveUp = keyboard_check(ord("W"));
		iMoveDown = keyboard_check(ord("S"));
		iAttack = mouse_check_button_pressed(mb_left);
		iAttackHold = mouse_check_button(mb_left);
		iDodge = keyboard_check_pressed(vk_space);
		iSlide = keyboard_check_pressed(vk_shift);
		iCrouch = keyboard_check(vk_control);
		iJump = keyboard_check_pressed(vk_space);
		iGunSlotNext = mouse_wheel_up();
		iGunSlotPrevious = mouse_wheel_down();
		iAim = mouse_check_button(mb_right);
		break;
}
