// Initialize the blood drop variables
fallDistance = 32;
direction = random_range(260, 280);
image_angle = direction;
speed = 3;

// Set the ground collision alarm
alarm[0] = fallDistance / 2;
