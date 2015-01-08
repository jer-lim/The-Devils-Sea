// return sprite index based on ship type and player number
var player_no = argument0;
var ship_type = argument1;

if (player_no == PLAYER_ONE) {
    if (ship_type == SHIP_XEBEC)            return ship_xebec_1_sprite;
    else if (ship_type == SHIP_CARRACK)     return ship_carrack_1_sprite;
    else if (ship_type == SHIP_GALLEASS)    return ship_galleass_1_sprite;
    else if (ship_type == SHIP_CORVETTE)    return ship_corvette_1_sprite;
}
else if (player_no == PLAYER_TWO) {
    if (ship_type == SHIP_XEBEC)            return ship_xebec_2_sprite;
    else if (ship_type == SHIP_CARRACK)     return ship_carrack_2_sprite;
    else if (ship_type == SHIP_GALLEASS)    return ship_galleass_2_sprite;
    else if (ship_type == SHIP_CORVETTE)    return ship_corvette_2_sprite;
}
