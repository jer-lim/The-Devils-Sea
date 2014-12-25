if (!ready_to_go) {
    // create black background that fades in in 0.5 seconds
    black_bg_init_fade_in(true, 0.5);
    
    // pause 0.5 seconds for fade
    ready_to_go = true; 
    alarm[0] = 0.5 * room_speed; // set alarmer_obj's alarm 0 to run
}
else {
    var room_to_fade_to = argument0;
    room_goto(room_to_fade_to);
}
