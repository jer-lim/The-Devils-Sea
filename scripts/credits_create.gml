// create black background that fades out in 0.5 seconds
black_bg_init_fade_in(false, ROOM_FADE_TIME);

// alarm object to control transitions
instance_create(0, 0, alarmer_obj);

// create credits object
instance_create(room_width * 0.7, room_height, credits_obj);
