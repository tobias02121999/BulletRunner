/// scr_player_initialize(playerID)

// Store the given arguments in temporary variables
var _playerId = argument0;

// Initialize the player technical variables
playerState = "DEFAULT";
isMoving = false;
movementSpeedHorizontal = 0;
movementSpeedVertical = 0;
movementDirection = 0;
facingDirection = 1;
gunId = 0;
gunImageIndex = 0;
leapRespondTimer = 10;
movementSpeedBoost = 0;
movementSpeedBoostFriction = .025;
movementDodgeSpeedBoost = 1.75;
movementLeapSpeedBoost = 2.25;
movementSlideSpeedBoost = 1;
movementJumpSpeedBoost = 2;

// Initialize the player statistics variables
movementSpeed = 0;
movementThrust = 0;
movementFriction = 0;
dodgeFriction = 0;
leapFriction = 0;
slideFriction = 0;
jumpFriction = 0;

// Set the player variables to match with the given playerID
switch (_playerId)
{
	case 0: // Jack character playerID
		movementSpeed = 2.5;
		movementThrust = .5;
		movementFriction = .25;
		dodgeFriction = .04;
		leapFriction = 0;
		slideFriction = .035;
		jumpFriction = 0;
		break;
}
