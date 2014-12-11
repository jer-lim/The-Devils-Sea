///ship_create(ship_type)

// Games Programming Assignment 1
// Add game feature:   Spawn ship
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

/*
* Load ship stats for selected ship.
*/

ship_type = argument0;

// if ship type is invalid, assign a random value
if (ship_type < 0 || ship_type > 3)
    ship_type = floor(random_range(0, 4));

// load ship attribute data
ship_load(ship_type);

// Get trap reloading up and running
if (ship_type == SHIP_CORVETTE) {
    alarm[3] = TRAP_RELOAD_TIME / 3 * room_speed;
} else {
    alarm[3] = TRAP_RELOAD_TIME * room_speed;
}

// Carrack's passive ability: fires a small cannonball in the
// direction it is facing, every 3 seconds
if (ship_type == SHIP_CARRACK) {
    alarm[1] = room_speed * CARRACK_PASSIVE_RELOAD;
}

//create health bar
hp_redbar = instance_create(x, y, red_bar_obj);
hp_redbar.image_xscale = 1.4;
hp_redbar.image_yscale = 0.3;

hp_greybar = instance_create(x, y, grey_bar_obj);
hp_greybar.image_xscale = 1.4;
hp_greybar.image_yscale = 0.3;

hp_heart = instance_create(x, y, hud_heart_obj);
// hp_heart.image_xscale = 0.25;
// hp_heart.image_yscale = 0.25;

//create traps counter
for(var i = 0; i < 5; ++i){
    hud_traps[i] = instance_create(x, y, hud_chest_obj);
    hud_traps[i].image_xscale = 0.6;
    hud_traps[i].image_yscale = 0.6;
}

// create ulti recharge bar
ulti_yellowbar = instance_create(x, y, yellow_bar_obj);
ulti_yellowbar.image_xscale = 1.4;
ulti_yellowbar.image_yscale = 0.3;

ulti_greybar = instance_create(x, y, grey_bar_obj);
ulti_greybar.image_xscale = 1.4;
ulti_greybar.image_yscale = 0.3;

ulti_icon = instance_create(x, y, hud_ulti_obj);
ulti_icon.sprite_index = ship_ulti_icon[ship_type];
// ulti_icon.image_xscale = 0.25;
// ulti_icon.image_yscale = 0.25;