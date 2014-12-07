var ship_owner = owner;

with(greenbar){
    instance_destroy();
}
instance_destroy();

// recreate next ship
if (global.player_ships_index[ship_owner] <= MAX_SHIPS) {
    var ship;
    
    // spawn ship in appropriate location
    if (ship_owner == PLAYER_ONE)
        ship = instance_create(50, room_height*0.5, ship1_obj);
    else if (ship_owner == PLAYER_TWO)
        ship = instance_create(room_width - 50, room_height*0.5, ship2_obj);
    
    // run ship creation code
    with(ship) {
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
}
// player has run out of ships
else {

}