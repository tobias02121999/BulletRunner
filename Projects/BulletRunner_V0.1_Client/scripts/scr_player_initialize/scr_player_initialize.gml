/// scr_player_initialize(playerID)

// Store the given arguments in temporary variables
var _playerId = argument0;

// Initialize the player input variables
scr_player_getInput(playerId);

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
movementDodgeSpeedBoost = 2;
movementLeapSpeedBoost = 3.5;
movementSlideSpeedBoost = 1;
movementJumpSpeedBoost = 2.5;
playerSpawnX = x;
playerSpawnY = y;
playerSpawned = false;
bulletHitDirection = 1;
isBurning = false;
fireIndex = 0;
fireDamage = .1;

// Initialize the player gun variables
gunId[0] = 0;
gunId[1] = -1;
gunId[2] = -1;
gunId[3] = -1;
gunId[4] = -1;
gunId[5] = -1;
gunId[6] = -1;
gunId[7] = -1;
gunId[8] = -1;
gunSlot = 0;
gunSlotAmount = 7;
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
dodgeSpeed = 0;
leapSpeed = 0;
slideSpeed = 0;
jumpSpeed = 0;
maxHp = 1;
hp = maxHp;

// Set the player variables to match with the given playerID
switch (_playerId)
{
	case 0: // Jack character playerID
		movementSpeed = 3.75;
		movementThrust = 1.25;
		movementFriction = .5;
		dodgeSpeed = 3;
		leapSpeed = 4;
		slideSpeed = 3.25;
		jumpSpeed = 2.75;
		maxHp = 25;
		hp = maxHp;
		break;
}
