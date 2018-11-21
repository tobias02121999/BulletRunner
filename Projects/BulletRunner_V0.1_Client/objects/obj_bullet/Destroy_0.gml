// Spawn the explosion effect (if it's applicable)
if (sprite_index == spr_rocket)
{
	var obj = instance_create_layer(x, y, "Effects", obj_explosion);
	obj.isAllied = isAllied;
}
