// 
draw_set_color(c_purple)
draw_set_alpha(areaAlpha);
draw_ellipse(x - spawnRadiusXfrom, y - spawnRadiusYfrom + height, x + spawnRadiusXto, y + spawnRadiusYto + height, false);
draw_set_alpha(1);
draw_set_color(c_white);

// Draw the cloud
draw_self();
