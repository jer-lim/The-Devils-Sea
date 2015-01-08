// Games Programming Assignment 1
// Add game feature:   Tutorial
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// create black background that fades out in 0.5 seconds
black_bg_init_fade_in(false, ROOM_FADE_TIME);

// animated moving fog
create_fog(false);

// alarm object to control transitions
instance_create(0, 0, alarmer_obj);