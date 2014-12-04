// change window size to force display to render correctly
window_set_size(1, 1);
window_set_size((display_get_height() * 0.7)/3*4, (display_get_height() * 0.7));

//Randomise the seed because gamemaker is BAD
randomize();

//pause 2 seconds
with(alarmer_obj)
{
    alarm[0] = 0.1 * room_speed; //set alarmer_obj's alarm 0 to run
}