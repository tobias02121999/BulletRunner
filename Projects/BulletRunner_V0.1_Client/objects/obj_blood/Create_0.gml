// Initialize the blood variables
speed = random_range(.5, 10);
speedReduction = speed * 0.1;
scaleReduction = .025;

// Randomize the image index
image_index = round(random_range(0, sprite_get_number(sprite_index) - 1));
