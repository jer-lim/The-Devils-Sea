// Games Programming Assignment 1
// Add game feature:   Xebec ability
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

var cUVX = cos(degtorad(image_angle));
var cUVY = -sin(degtorad(image_angle));
hspeed += 60 * cUVX * SHIP_SPEED_MULTIPLIER;
vspeed += 60 * cUVY * SHIP_SPEED_MULTIPLIER;
max_speed += 60 * SHIP_SPEED_MULTIPLIER;
ship_rammed_damage_multiplier = 0.5;
