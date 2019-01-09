// Initialize the blood variables
speed = random_range(.5, 20);
speedReduction = speed * random_range(.05, .15);
scaleReduction = .025;

// Randomize the image index
image_index = round(random_range(0, sprite_get_number(sprite_index) - 1));
