// Set the players ID
playerId = 0;

// Initialize the player variables
scr_player_initialize(playerId);

// Spawn the playerShadow
var obj = instance_create_layer(0, 0, "Shadows", obj_shadow);
obj.targetObject = self;
obj.offsetY = 16;

// Spawn the playerReflection
var obj = instance_create_layer(0, 0, "Reflections", obj_shadow);
obj.targetObject = self;
obj.offsetY = 16;
obj.color = c_white;
obj.image_alpha = .65;
