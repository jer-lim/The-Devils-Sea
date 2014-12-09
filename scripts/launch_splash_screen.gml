// change window size to force display to render correctly
// window_set_size(1, 1);
// window_set_size((display_get_height() * 0.7)/9*16, (display_get_height() * 0.7));

// randomise the seed
randomize();

globalvar games_played;
globalvar wins;

// pause 2 seconds
with(alarmer_obj)
{
    alarm[0] = 2 * room_speed; // set alarmer_obj's alarm 0 to run
}