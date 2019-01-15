// Destroy the blood drop and spawn blood (on the ground)
var int = instance_create_layer(x, y, "BloodSpat", obj_bloodSpat);
int.image_angle = random_range(0, 360);

instance_destroy();
