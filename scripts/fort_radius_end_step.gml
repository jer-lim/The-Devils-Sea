// capture sound volume control
if (audio_is_playing(self.fort.capture_sound)) {
    // if only enemy ship is in range
    if (enemy_ship_in_range && !friendly_ship_in_range) {
        // set capture sound volume to the maximum
        audio_sound_gain(self.fort.capture_sound, 1,
            audio_sound_get_track_position(self.fort.capture_sound));
    }
    // if both ships are in range
    else if (enemy_ship_in_range && friendly_ship_in_range) {
        // soften capture sound volume
        audio_sound_gain(self.fort.capture_sound, 0.4,
            audio_sound_get_track_position(self.fort.capture_sound));
    }
    // either both ships are not in range,
    // or only friendly ship in range
    // if (!enemy_ship_in_range && !friendly_ship_in_range) {
    else {
        // turn off sound
        audio_stop_sound(self.fort.capture_sound);
    }
}
