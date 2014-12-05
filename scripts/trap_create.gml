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
