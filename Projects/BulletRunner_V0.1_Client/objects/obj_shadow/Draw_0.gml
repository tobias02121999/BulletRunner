// Draw the shadow
if (obj_player.playerState != "FALL")
	draw_sprite_ext(targetObject.sprite_index, targetObject.image_index, targetObject.x + offsetX, targetObject.y + offsetY - 4, targetObject.image_xscale, -targetObject.image_yscale / 2, targetObject.image_angle, color, image_alpha);
