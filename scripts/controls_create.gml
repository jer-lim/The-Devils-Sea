// Games Programming Assignment 1
// Add game feature:   Tutorial
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// create black background that fades out in 0.5 seconds
black_bg_init_fade_in(false, ROOM_FADE_TIME);

// create player 1's ship
var ship1 = instance_create(60, room_height*0.5 - 55, ship1_obj);
with (ship1) {
    ship_create(SHIP_XEBEC);
}
ship1.owner = PLAYER_ONE;

// create player 2's ship
var ship2 = instance_create(room_width*0.5 - 85, room_height*0.5 - 55, ship2_obj);
with (ship2) {
    ship_create(SHIP_XEBEC);
}
ship2.image_angle = 180;
ship2.owner = PLAYER_TWO;

// alarm object to control transitions
instance_create(0, 0, alarmer_obj);
