// Games Programming Assignment 1
// Add game feature:   Splash screen
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// change window size to force display to render correctly
display_set_gui_size(1280, 720);

// randomise the seed
randomize();

globalvar games_played;
globalvar wins;

// create black background that fades out in 0.5 seconds
black_bg_init_fade_in(false, ROOM_FADE_TIME);

// pause 1 second
with(alarmer_obj) {
    room_to_fade = menu;
    alarm[0] = 1.5 * room_speed; // set alarmer_obj's alarm 0 to run
}

// play menu background music
global.sound = true;
audio_play_sound(menu_sound, 90, 1);