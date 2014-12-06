var ship_owner = owner;

with(greenbar){
    instance_destroy();
}
instance_destroy();

// recreate next ship
if (global.player_ships_index[ship_owner] <= MAX_SHIPS) {
    var ship;
    if (ship_owner == PLAYER_ONE) {
        ship = instance_create(50, room_height*0.5, ship1_obj);
    }
    else if (ship_owner == PLAYER_TWO) {
        ship = instance_create(room_width - 50, room_height*0.5, ship2_obj);
        ship.image_angle = 180;
    }
        
    with(ship) {
        ship_create(global.player_ships[ship_owner, player_ships_index[ship_owner]++]);
    }
    
    ship.owner = ship_owner;
    global.ships[ship_owner] = ship;
}
// player has run out of ships
else {

}
