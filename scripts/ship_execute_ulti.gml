// if ulti is not on cooldown
if (ulti_countdown <= 0) {    
    // Xebec's ulti activation
    if (ship_type == SHIP_XEBEC) {
        ulti_timer = room_speed * 3;
        xebec_ulti_activate();
    }
    // Galleass's ulti activation
    else if (ship_type == SHIP_GALLEASS) {
        ulti_timer = room_speed * 5;
        galleass_ulti_activate();
    }
    // Corvette's ulti activation
    else if (ship_type == SHIP_CORVETTE) {
        corvette_ulti_activate();
    }

    // set ulti on cooldown
    ulti_countdown = ship_ulti_cooldown[ship_type] * room_speed;
}
