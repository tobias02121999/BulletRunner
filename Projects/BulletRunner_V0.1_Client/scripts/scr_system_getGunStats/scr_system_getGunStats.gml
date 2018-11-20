/// scr_system_getGunStats(gunId)

// Store the given arguments in temporary variables
var _gunId = argument0;

// Update the gun statistics based on the given gunId
switch (_gunId)
{
	/*
	gunSprite > The sprite of the gun
	gunResetAlarm > The time it takes to reset the animation back to normal from the shooting image
	gunBulletAmount > The amount of bullets the gun fires at once
	gunAccuracy > How accurate the gun is (in degrees), with 0 being 100% accurate
	gunRange > The time it takes before the bullet gets destroyed
	*/
	
	case -1: // Hand
		gunSprite = spr_hand;
		gunResetAlarm = 1;
		gunBulletAmount = 0;
		gunAccuracy = 0;
		gunRange = 0;
		gunDamage = 0;
		gunReloadDuration = 0;
		gunBulletSprite = spr_bullet;
		gunBulletSpeed = 0;
		break;
	
	case 0: // Pistol
		gunSprite = spr_pistol;
		gunResetAlarm = 3;
		gunBulletAmount = 1;
		gunAccuracy = 5;
		gunRange = 16;
		gunDamage = 3;
		gunReloadDuration = 5;
		gunBulletSprite = spr_bullet;
		gunBulletSpeed = 7.5;
		break;
		
	case 1: // Shotgun
		gunSprite = spr_shotgun;
		gunResetAlarm = 6;
		gunBulletAmount = 5;
		gunAccuracy = 12.5;
		gunRange = 12;
		gunDamage = 2;
		gunReloadDuration = 20;
		gunBulletSprite = spr_shell;
		gunBulletSpeed = 6;
		break;
		
	case 2: // RPG
		gunSprite = spr_rpg;
		gunResetAlarm = 8;
		gunBulletAmount = 1;
		gunAccuracy = 2.5;
		gunRange = 30;
		gunDamage = 10;
		gunReloadDuration = 35;
		gunBulletSprite = spr_rocket;
		gunBulletSpeed = 5.5;
		break;
}
