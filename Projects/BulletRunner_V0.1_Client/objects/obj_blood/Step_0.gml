// Set the image angle to equal the current direction
if (speed > 0)
{
	image_angle = direction;
	speed -= speedReduction;
	
	if (image_xscale > scaleReduction)
	{
		image_xscale -= scaleReduction;
		image_yscale -= scaleReduction;
	}
	else
	{
		image_xscale = scaleReduction;
		image_yscale = scaleReduction;
	}
}
else
{
	var int = instance_create_layer(x, y, "BloodSpat", obj_bloodSpat);
	int.image_angle = image_angle;
	
	instance_destroy();
}
