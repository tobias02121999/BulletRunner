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
reelPositionX = 0;
reelPositionY = 0;
reelSpeed = 8;
isSlowed = false;
portalTimer = 0;
knockbackX = 0;
knockbackY = 0;

// Initialize the player gun variables
gunId[0] = 1;
gunId[1] = 0;
gunId[2] = 3;
gunId[3] = 5;
gunId[4] = 4;
gunId[5] = 2;

gunDurability[0] = 0;
gunDurability[1] = 100;
gunDurability[2] = 0;
gunDurability[3] = 0;
gunDurability[4] = 0;
gunDurability[5] = 0;

gunDurabilityMax = 0;

gunSlot = 1;
gunSlotAmount = 6;
gunImageIndex = 0;
gunSpriteIndex = spr_machineGun;
gunBulletAmount = 0;
gunResetAlarm = 0;
gunAccuracy = 0;
gunRange = 0;
gunDamage = 0;
gunReloadDuration = 0;
gunIsAutomatic = false;
gunBulletSprite = spr_bullet;
gunBulletSpeed = 0;
gunBulletExplodeOnDestroy = false;
gunBulletDestroyOnMousePosition = false;
gunBulletReelOnDestroy = false;
gunBulletApplySlowing = false;
gunBulletSlowingDuration = 0;
gunBulletRicochet = false;
gunBulletLine = false;
gunShakeIntensity = 0;
gunRecoil = 0;
gunKnockback = 0;

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
		movementSpeed = 4;
		movementThrust = 1.25;
		movementFriction = .5;
		dodgeSpeed = 2.75;
		leapSpeed = 4;
		slideSpeed = 3.25;
		jumpSpeed = 3.25;
		maxHp = 25;
		hp = maxHp;
		break;
}
