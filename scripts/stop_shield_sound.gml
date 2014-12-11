// Games Programming Assignment 1
// Add game feature:   Treasure chest effects (boost time ended)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// stop shield sound
if (audio_is_playing(divine_boost_sound)
    || audio_is_paused(divine_boost_sound)) {
    audio_stop_sound(divine_boost_sound);   
}