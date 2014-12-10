// create player 1's ship
var ship1 = instance_create(room_width / 4, room_height*0.5, ship1_obj);
with (ship1) {
    ship_create(SHIP_XEBEC);
}
ship1.owner = PLAYER_ONE;

// create player 2's ship
var ship2 = instance_create(room_width / 4 * 3, room_height*0.5, ship2_obj);
with (ship2) {
    ship_create(SHIP_XEBEC);
}
ship2.image_angle = 180;
ship2.owner = PLAYER_TWO;
