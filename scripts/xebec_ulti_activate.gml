var cUVX = cos(degtorad(image_angle));
var cUVY = -sin(degtorad(image_angle));
hspeed += 40 * cUVX * SHIP_SPEED_MULTIPLIER;
vspeed += 40 * cUVY * SHIP_SPEED_MULTIPLIER;
max_speed += 40 * SHIP_SPEED_MULTIPLIER;
