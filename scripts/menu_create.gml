// Games Programming Assignment 1
// Add game feature:   Main menu
// Student Number:     S10122326F, S10131808A
// Student Name:       Jeremy Lim, Elliot Tan

// custom mouse cursor
cursor_sprite = custom_cursor_sprite;

global.games_played = 0;
global.wins[PLAYER_ONE] = 0;
global.wins[PLAYER_TWO] = 0;

// menu music
if (audio_is_playing(pregame_sound))
    audio_stop_sound(pregame_sound);
if (audio_is_playing(background_sound))
    audio_stop_sound(background_sound);
if (!audio_is_playing(menu_sound))
    audio_play_sound(menu_sound, 90, 1);

// create waves music
if (!audio_is_playing(waves_sound)) {
    audio_play_sound(waves_sound, 100, 1);
    audio_sound_gain(waves_sound, 0.75, 0);
}
audio_pause_sound(waves_sound);

create_fog(false);
