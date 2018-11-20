// Spawn the explosion effect (if it's applicable)
if (sprite_index == spr_rocket && isAllied)
	instance_create_layer(x, y, "Effects", obj_explosion);
