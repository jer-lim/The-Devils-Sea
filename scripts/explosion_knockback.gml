// argument0: explosion radius
var explosion = argument0;
// argument1: object to knockback
var obj = argument1;

// calculate unit vectors
var distance_sq = power(obj.x - explosion.x, 2) + power(obj.y - explosion.y, 2);
var cuX = (obj.x - explosion.x)/distance_sq;
var cuY = (obj.y - explosion.y)/distance_sq;

// set object speed
obj.hspeed = cuX * 700;
obj.vspeed = cuY * 700;
