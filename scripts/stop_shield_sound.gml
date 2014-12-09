// stop shield sound
if (audio_is_playing(divine_boost_sound)
    || audio_is_paused(divine_boost_sound)) {
    audio_stop_sound(divine_boost_sound);   
}
