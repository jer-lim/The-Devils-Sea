var ship_owner = owner;

// destroy children
with(hp_greybar){
    instance_destroy();
}
with(hp_redbar){
    instance_destroy();
}
with(hp_heart){
    instance_destroy();
}
with(ulti_yellowbar){
    instance_destroy();
}
with(ulti_greybar){
    instance_destroy();
}
with(ulti_icon){
    instance_destroy();
}
for(var i = 0; i < 5; ++i){
    with(hud_traps[i]){
        instance_destroy();
    }
}

// deactivate ultis
// end ulti timer
if (ulti_timer >= 0) {
    ulti_timer = -1;
    if(ship_type == SHIP_XEBEC)
        xebec_ulti_deactivate();
    if(ship_type == SHIP_GALLEASS)
        galleass_ulti_deactivate();
}

// destroy ship
instance_destroy();
global.ships_lost[ship_owner]++;

// recreate next ship
if (global.player_ships_index[ship_owner] <= MAX_SHIPS) {
    var ship;
    
    // spawn ship in appropriate location
    if (ship_owner == PLAYER_ONE)
        ship = instance_create(50, room_height*0.5, ship1_obj);
    else if (ship_owner == PLAYER_TWO)
        ship = instance_create(room_width - 50, room_height*0.5, ship2_obj);
    
    // run ship creation code
    with (ship) {
        ship_create(global.player_ships_selection[ship_owner,
            player_ships_index[ship_owner]++]);
    }
    
    // update global array
    global.ships[ship_owner] = ship;
    
    // update "other_ship" variables
    if (ship_owner == PLAYER_TWO) {
        // rotate player 2's ship correctly
        ship.image_angle = 180;
        if (instance_exists(global.ships[PLAYER_ONE])) {
            ship.other_ship = global.ships[PLAYER_ONE].id;
            ship.other_ship.other_ship = global.ships[PLAYER_TWO].id;
        }
    }
    else {
        if (instance_exists(global.ships[PLAYER_TWO])) {
            ship.other_ship = global.ships[PLAYER_TWO].id;
            ship.other_ship.other_ship = global.ships[PLAYER_ONE].id;
        }
    }
        
    // assign ship owner
    ship.owner = ship_owner;
    show_player_ship_bars(3);
}

// player has run out of ships
else {
    // delay before checking for winner
    with(alarmer_obj){
        //set alarm to check if a player won or draw
        alarm[1] = 1 * room_speed;
    }
}
