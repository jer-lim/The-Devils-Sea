// argument0: explosion radius
var explosion = argument0;
// argument1: object to knockback
var obj = argument1;

// calculate unit vectors
var distance_sq = power(obj.x - explosion.x, 2) + power(obj.y - explosion.y, 2);
var cuX = 0, cuY = 0;

// prevent division by zero
if (distance_sq > 0) {
    cuX = (obj.x - explosion.x)/distance_sq;
    cuY = (obj.y - explosion.y)/distance_sq;
}
// distance from bomb to ship is zero 
else {
    // determine random direction to knockback
    cuX = random_range(-0.05, 0.05);
    cuY = random_range(-0.05, 0.05);
}

show_debug_message("cuX:" + string(cuX) + ", cuY:" + string(cuY));

// set object speed
obj.hspeed = cuX * TRAP_EXPLOSION_FORCE;
obj.vspeed = cuY * TRAP_EXPLOSION_FORCE;