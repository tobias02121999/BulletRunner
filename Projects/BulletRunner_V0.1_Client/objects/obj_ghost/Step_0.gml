// Reduce the image alpha over time
image_alpha -= alphaReductionSpeed;

// Destroy the object if it becomes invisible
if (image_alpha <= 0)
	instance_destroy();
