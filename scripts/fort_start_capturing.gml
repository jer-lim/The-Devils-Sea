// Games Programming Assignment 1
// Add game feature:   Fort capturing
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// if fort is not owned by ship in range, begin capturing
if (other.owner != self.fort.owner && other.hp > 0) {
    enemy_ship_in_range = true;
    
    if (other.owner == PLAYER_ONE)
        effect_create_below(ef_ring, x, y, 2, make_color_rgb(22, 190, 254));
    else if (other.owner == PLAYER_TWO)
        effect_create_below(ef_ring, x, y, 2, make_color_rgb(255, 128, 128));
        
    // update capture timer
    if (self.fort.capture_timer > 0) {
        self.fort.capture_timer -= 2;
        
        // if ship type is galleass, capturing speed is faster
        if (other.ship_type == SHIP_GALLEASS) {
            self.fort.capture_timer -= 0.5;
        }
        
        // play capture sound if it is not already playing for this fort
        if (!audio_is_playing(self.fort.capture_sound)) {
            self.fort.capture_sound = audio_play_sound(capturing_sound, 35, 0);
            audio_sound_gain(self.fort.capture_sound, 1,
                audio_sound_get_track_position(self.fort.capture_sound));
        }
    }
}
// if fort owner is in range, increase fort "healing"
// (i.e. fort will be capture much slower)
else {
    friendly_ship_in_range = true;

    if (self.fort.capture_timer < room_speed * FORT_CAPTURE_DURATION)
        self.fort.capture_timer += 0.5;
        
    // ensure fort "health" does not exceed maximum amount
    if (fort.capture_timer > room_speed * FORT_CAPTURE_DURATION)
        fort.capture_timer = room_speed * FORT_CAPTURE_DURATION;
}
