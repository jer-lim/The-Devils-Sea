// Games Programming Assignment 1
// Add game feature:   Tutorial
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// create black background that fades out in 0.5 seconds
black_bg_init_fade_in(false, ROOM_FADE_TIME);

// animated moving fog
create_fog(false);

// create player 1's ship
var ship1 = instance_create(50, room_height*0.8, ship1_obj);
with (ship1) {
    ship_create(PLAYER_ONE, SHIP_XEBEC);
}
ship1.depth = -150;

// create player 2's ship
var ship2 = instance_create(room_width - 50, room_height*0.8, ship2_obj);
with (ship2) {
    ship_create(PLAYER_TWO, SHIP_XEBEC);
}
ship2.image_angle = 180;
ship2.depth = -150;

// create sample forts
var fort1 = instance_create(room_width * 0.3, room_height * 0.75, fort_obj);
var fort2 = instance_create(room_width * 0.7, room_height * 0.75, fort_obj);
fort_set_owner(fort1, PLAYER_ONE);
fort_set_owner(fort2, PLAYER_TWO);

// alarm object to control transitions
instance_create(0, 0, alarmer_obj);
