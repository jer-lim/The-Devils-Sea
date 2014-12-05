/*
* Load ship stats for selected ship.
* @todo supply ship_type from another source
*/

var owner = 0;
ship_type = floor(random_range(0, 4));
// ship_type = SHIP_GALLEASS;

ship_load(ship_type);
alarm[3] = TRAP_RELOAD_TIME * room_speed;
