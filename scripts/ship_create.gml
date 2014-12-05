/*
* Load ship stats for selected ship.
* @todo supply ship_type from another source
*/

ship_type = floor(random_range(0, 4));
ship_type = SHIP_CORVETTE;

ship_load(ship_type);
// Get trap reloading up and running
alarm[3] = TRAP_RELOAD_TIME * room_speed;

//create ulti recharge bar
greenbar = instance_create(x, y + 60, green_bar_obj);
greenbar.image_xscale = 1.2;
greenbar.image_yscale = 0.6;


