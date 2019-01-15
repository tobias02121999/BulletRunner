// 
draw_set_color(c_black)
draw_set_alpha(.75);
draw_rectangle(x - spawnRadiusXfrom, y - spawnRadiusYfrom + height, x + spawnRadiusXto, y + spawnRadiusYto + height, true);
draw_set_alpha(1);
draw_set_color(c_white);
