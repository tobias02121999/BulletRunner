// Check if the button is being clicked
if (mouse_check_button_pressed(mb_left))
{
	if ((mouse_x <= positionX + (buttonWidth / 2) && mouse_x >= positionX - (buttonWidth / 2)) && 
		(mouse_y <= positionY + (buttonHeight / 2) && mouse_y >= positionY - (buttonHeight / 2)))
	{
		scr_button_onClick(buttonId);
	}
}
