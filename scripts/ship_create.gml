/*
* Load ship stats for selected ship.
*/

ship_type = argument0;

// if ship type is invalid, assign a random value
if (ship_type < 0 || ship_type > 3)
    ship_type = floor(random_range(0, 4));
    
// ship_type = SHIP_XEBEC;

// load ship attribute data
ship_load(ship_type);

// Get trap reloading up and running
if (ship_type == SHIP_CORVETTE) {
    alarm[3] = TRAP_RELOAD_TIME / 2 * room_speed;
} else {
    alarm[3] = TRAP_RELOAD_TIME * room_speed;
}

// Carrack's passive ability: fires a small cannonball in the
// direction it is facing, every 3 seconds
if (ship_type == SHIP_CARRACK) {
    alarm[1] = room_speed * CARRACK_PASSIVE_RELOAD;
}

// create ulti recharge bar
greenbar = instance_create(x, y + 60, green_bar_obj);
greenbar.image_xscale = 1.2;
greenbar.image_yscale = 0.6;
