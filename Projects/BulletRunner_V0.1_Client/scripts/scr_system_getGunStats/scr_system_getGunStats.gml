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
		gunDurabilityMax = 0;
		gunShakeIntensity = 0;
		gunRecoil = 0;
		gunKnockback = 0;
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
		gunBulletLine = false;
		gunDurabilityMax = 100;
		gunShakeIntensity = 2;
		gunRecoil = 2;
		gunKnockback = 1;
		break;
		
	case 1: // Shotgun
		gunSprite = spr_shotgun;
		gunResetAlarm = 6;
		gunBulletAmount = 5;
		gunAccuracy = 7.5;
		gunRange = 6;
		gunDamage = 2.25;
		gunReloadDuration = 20;
		gunIsAutomatic = false;
		gunBulletSprite = spr_shell;
		gunBulletSpeed = 10;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = false;
		gunBulletLine = false;
		gunDurabilityMax = 15;
		gunShakeIntensity = 6;
		gunRecoil = 7.5;
		gunKnockback = 8;
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
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = false;
		gunBulletLine = false;
		gunDurabilityMax = 10;
		gunShakeIntensity = 12;
		gunRecoil = 10;
		gunKnockback = 5;
		break;
	
	case 3: // Sniper
		gunSprite = spr_sniper;
		gunResetAlarm = 3;
		gunBulletAmount = 1;
		gunAccuracy = 0;
		gunRange = 30;
		gunDamage = 15;
		gunReloadDuration = 40;
		gunIsAutomatic = false;
		gunBulletSprite = spr_bullet;
		gunBulletSpeed = 0;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = false;
		gunBulletLine = true;
		gunDurabilityMax = 8;
		gunShakeIntensity = 3;
		gunRecoil = 5;
		gunKnockback = 0;
		break;
	
	/*
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
		gunDurabilityMax = 3;
		gunShakeIntensity = 3;
		gunRecoil = 0;
		gunKnockback = 0;
		break;
	*/
		
	case 4: // Plasma Rifle
		gunSprite = spr_plasmaRifle;
		gunResetAlarm = 2;
		gunBulletAmount = 1;
		gunAccuracy = 5;
		gunRange = 32;
		gunDamage = 2;
		gunReloadDuration = 3;
		gunIsAutomatic = true;
		gunBulletSprite = spr_plasma;
		gunBulletSpeed = 8;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = true;
		gunBulletSlowingDuration = 5;
		gunBulletRicochet = false;
		gunBulletLine = false;
		gunDurabilityMax = 75;
		gunShakeIntensity = 3;
		gunRecoil = 3;
		gunKnockback = 0;
		break;
		
	case 5: // Ricochet Gun
		gunSprite = spr_ricochetGun;
		gunResetAlarm = 3;
		gunBulletAmount = 2;
		gunAccuracy = 8.5;
		gunRange = 32;
		gunDamage = 3;
		gunReloadDuration = 10;
		gunIsAutomatic = false;
		gunBulletSprite = spr_arrow;
		gunBulletSpeed = 10;
		gunBulletExplodeOnDestroy = false;
		gunBulletDestroyOnMousePosition = false;
		gunBulletDrawRope = false;
		gunBulletReelOnDestroy = false;
		gunBulletApplySlowing = false;
		gunBulletRicochet = true;
		gunBulletLine = false;
		gunDurabilityMax = 35;
		gunShakeIntensity = 4;
		gunRecoil = 2;
		gunKnockback = 1;
		break;
}
