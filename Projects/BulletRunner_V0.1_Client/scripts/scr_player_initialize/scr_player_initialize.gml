/// scr_player_initialize(playerID)

// Store the given arguments in temporary variables
var _playerId = argument0;

// Initialize the player technical variables
playerState = "FREEZE";
isMoving = false;
movementSpeedHorizontal = 0;
movementSpeedVertical = 0;
movementDirection = 0;
facingDirection = 1;
drawGun = false;
leapRespondTimer = 10;
movementSpeedBoost = 0;
movementSpeedBoostFriction = .2;
movementDodgeSpeedBoost = 3.5;
movementLeapSpeedBoost = 3.5;
movementSlideSpeedBoost = 3.5;
movementJumpSpeedBoost = 3.5;
playerSpawnX = x;
playerSpawnY = y;
playerSpawned = false;
bulletHitDirection = 1;

// Initialize the player gun variables
gunId = 0;
gunImageIndex = 0;
gunSpriteIndex = spr_pistol;
gunBulletAmount = 0;
gunResetAlarm = 0;
gunAccuracy = 0;
gunRange = 0;
gunDamage = 0;
gunReloadDuration = 0;
gunBulletSprite = spr_bullet;
gunBulletSpeed = 0;

// Initialize the player statistics variables
movementSpeed = 0;
movementThrust = 0;
movementFriction = 0;
dodgeFriction = 0;
leapFriction = 0;
slideFriction = 0;
jumpFriction = 0;
maxHp = 1;
hp = maxHp;

// Set the player variables to match with the given playerID
switch (_playerId)
{
	case 0: // Jack character playerID
		movementSpeed = 3.75;
		movementThrust = .75;
		movementFriction = .25;
		dodgeFriction = 0;
		leapFriction = 0;
		slideFriction = 0;
		jumpFriction = 0;
		maxHp = 25;
		hp = maxHp;
		break;
}
