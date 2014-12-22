// Games Programming Assignment 1
// Add game feature:   Xebec active ability
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// calculate unit vector for direction ship is facing
var cUVX = cos(degtorad(image_angle));
var cUVY = -sin(degtorad(image_angle));

/*
// give a boost to its speed (based on direction)
hspeed += 60 * cUVX * SHIP_SPEED_MULTIPLIER;
vspeed += 60 * cUVY * SHIP_SPEED_MULTIPLIER;
*/

// increase its max speed cap
max_speed += 60 * SHIP_SPEED_MULTIPLIER;

// give a boost to its speed (based on direction)
hspeed = max_speed * cUVX;
vspeed = max_speed * cUVY;

// reduce future damage ship takes
ship_rammed_damage_multiplier = 0.5;

// play sound
audio_play_sound(xebec_active_sound, 40, 0);
