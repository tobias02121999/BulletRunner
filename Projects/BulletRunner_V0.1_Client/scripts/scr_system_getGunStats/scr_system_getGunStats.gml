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
		gunIsAutomatic = false;
		gunBulletSprite = spr_bullet;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		break;
	
	case 0: // Machine Gun
		gunSprite = spr_machineGun;
		gunResetAlarm = 2;
		gunBulletAmount = 1;
		gunAccuracy = 22;
		gunRange = 16;
		gunDamage = 3;
		gunReloadDuration = 4;
		gunIsAutomatic = true;
		gunBulletSprite = spr_bullet;
		gunBulletSpeed = 7.5;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = false;
		break;
		
	case 1: // Shotgun
		gunSprite = spr_shotgun;
		gunResetAlarm = 6;
		gunBulletAmount = 5;
		gunAccuracy = 12.5;
		gunRange = 12;
		gunDamage = 2;
		gunReloadDuration = 20;
		gunIsAutomatic = false;
		gunBulletSprite = spr_shell;
		gunBulletSpeed = 6;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = false;
		break;
		
	case 2: // RPG
		gunSprite = spr_rpg;
		gunResetAlarm = 8;
		gunBulletAmount = 1;
		gunAccuracy = 2.5;
		gunRange = 30;
		gunDamage = 10;
		gunReloadDuration = 35;
		gunIsAutomatic = false;
		gunBulletSprite = spr_rocket;
		gunBulletSpeed = 5.5;
		gunBulletExplodeOnDestroy = true;
		gunBulletDestroyOnMousePosition = true;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = false;
		break;
		
	case 3: // Grappling Gun
		gunSprite = spr_grapplingGun;
		gunResetAlarm = 3;
		gunBulletAmount = 1;
		gunAccuracy = 0;
		gunRange = 12;
		gunDamage = 0;
		gunReloadDuration = 40;
		gunIsAutomatic = false;
		gunBulletSprite = spr_hook;
		gunBulletSpeed = 16;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = true;
		gunBulletReelOnDestroy = true;
		gunBulletApplySlowing = false;
		gunBulletRicochet = false;
		break;
		
	case 4: // Plasma Rifle
		gunSprite = spr_plasmaRifle;
		gunResetAlarm = 2;
		gunBulletAmount = 1;
		gunAccuracy = 5;
		gunRange = 32;
		gunDamage = 3;
		gunReloadDuration = 3;
		gunIsAutomatic = true;
		gunBulletSprite = spr_plasma;
		gunBulletSpeed = 8;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = true;
		gunBulletSlowingDuration = 25;
		gunBulletRicochet = false;
		break;
		
	case 5: // Ricochet Gun
		gunSprite = spr_ricochetGun;
		gunResetAlarm = 3;
		gunBulletAmount = 4;
		gunAccuracy = 8.5;
		gunRange = 32;
		gunDamage = 3;
		gunReloadDuration = 5;
		gunIsAutomatic = false;
		gunBulletSprite = spr_arrow;
		gunBulletSpeed = 10;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = true;
		break;
}
