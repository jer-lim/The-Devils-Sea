/*
* Load ship stats for selected ship.
* @todo supply ship_type from another source
*/

ship_type = floor(random_range(0, 4));
// ship_type = SHIP_XEBEC;
ship_load(ship_type);
alarm[3] = TRAP_RELOAD_TIME * room_speed;