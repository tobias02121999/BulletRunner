// Spawn the blood objects
var rand = round(random_range(20, 30));
for (var i = 0; i < rand; i++)
{
	var int = instance_create_layer(x, y, "Effects", obj_blood);
	int.direction = other.direction + random_range(0, 360);
}
