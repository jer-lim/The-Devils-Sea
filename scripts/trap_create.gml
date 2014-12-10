// Games Programming Assignment 1
// Add game feature:   Trap laying
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

/*
* Remember current location and move it off-screen
* so it doesn't hurt anybody before it's supposed to :)
*/

spawnX = x;
spawnY = y;

x = -100;
y = -100;

armed = false;

/*
* Arm the trap after a few seconds  
*/
alarm[0] = 3 * room_speed;
