/*
* Load ship stats for selected ship.
* @todo supply ship_type from another source
*/

ship_type = floor(random_range(0, 4));
// ship_type = SHIP_XEBEC;
ship_load(ship_type);
<<<<<<< HEAD
alarm[3] = TRAP_RELOAD_TIME * room_speed;
=======
alarm[3] = TRAP_RELOAD_TIME * room_speed;
>>>>>>> 102449710e70305f8a9f29da4999fea641673a55
