// Games Programming Assignment 1
// Add game feature:   Ship selection (initialization)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// init array to store selected ship values
globalvar player_ships_selection;
for (var p = 1; p <= 2; p++) {
    for (var s = 1; s <= MAX_SHIPS; s++) {
        global.player_ships_selection[p, s] = -1;
    }
}

// array to store all ship button objects
globalvar pregame_btns;
global.pregame_btns[PLAYER_ONE, SHIP_XEBEC] = btn_1_xebec_obj;
global.pregame_btns[PLAYER_ONE, SHIP_CARRACK] = btn_1_carrack_obj;
global.pregame_btns[PLAYER_ONE, SHIP_GALLEASS] = btn_1_galleass_obj;
global.pregame_btns[PLAYER_ONE, SHIP_CORVETTE] = btn_1_corvette_obj;
global.pregame_btns[PLAYER_TWO, SHIP_XEBEC] = btn_2_xebec_obj;
global.pregame_btns[PLAYER_TWO, SHIP_CARRACK] = btn_2_carrack_obj;
global.pregame_btns[PLAYER_TWO, SHIP_GALLEASS] = btn_2_galleass_obj;
global.pregame_btns[PLAYER_TWO, SHIP_CORVETTE] = btn_2_corvette_obj;

// pause wave sounds from game
if (audio_is_playing(waves_sound)) {
    audio_pause_sound(waves_sound);
}

if (audio_is_playing(menu_sound))
    audio_stop_sound(menu_sound);
if (audio_is_playing(background_sound))
    audio_stop_sound(background_sound);
if (!audio_is_playing(pregame_sound))
    audio_play_sound(pregame_sound, 90, 1);
