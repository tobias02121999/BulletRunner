// Initialize the clientPlayer variables
targetX = x;
targetY = y;
isShooting = false;
username = "";
matchScore = 0;
isBurning = false;
fireIndex = 0;
mousePositionX = 0;
mousePositionY = 0;

// Initialize the gun variables
gunId = 0;
gunImageIndex = 0;
gunSpriteIndex = spr_pistol;
gunBulletAmount = 0;
gunResetAlarm = 0;
gunAccuracy = 0;
gunRange = 0;
gunDirection = 0;
gunDamage = 0;
gunReloadDuration = 0;
gunBulletSprite = spr_bullet;
gunBulletSpeed = 0;
gunBulletExplodeOnDestroy = false;
gunBulletDestroyOnMousePosition = false;
gunBulletDrawRope = false;
gunBulletReelOnDestroy = false;
gunBulletApplySlowing = false;
gunBulletSlowingDuration = 0;
gunBulletRicochet = false;
drawGun = true;

// Spawn the playerShadow
var obj = instance_create_layer(0, 0, "Shadows", obj_shadow);
obj.targetObject = self;
obj.offsetY = 16;

// Spawn the playerReflection
var obj = instance_create_layer(0, 0, "Reflections", obj_reflection);
obj.targetObject = self;
obj.offsetY = 16;
obj.color = c_white;
obj.image_alpha = .65;
