// Set the image index (according to if its colliding with wind)
if (place_meeting(x, y, obj_wind))
	image_index = 1;
else
	image_index = 0;
