// Draw the button background
draw_set_color(colorBackground);
draw_rectangle(positionX - (buttonWidth / 2), positionY - (buttonHeight / 2), positionX + (buttonWidth / 2), positionY + (buttonHeight / 2), false);

// Draw the button text
draw_set_color(colorText);
draw_set_halign(fa_center);
draw_text(positionX, positionY - 10, buttonText);

// Reset the draw settings back to default
draw_set_color(c_white);
draw_set_halign(fa_left);
