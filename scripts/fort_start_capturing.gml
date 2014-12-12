// Games Programming Assignment 1
// Add game feature:   Fort capturing
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// if fort is not owned by ship in range, begin capturing
if (other.owner != self.fort.owner && other.hp > 0) {
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
    }
}
// if fort owner is in range, increase fort "healing"
// (i.e. fort will be capture much slower)
else {
    if (self.fort.capture_timer < room_speed * FORT_CAPTURE_DURATION)
        self.fort.capture_timer += 0.5;
        
    // ensure fort "health" does not exceed maximum amount
    if (fort.capture_timer > room_speed * FORT_CAPTURE_DURATION)
        fort.capture_timer = room_speed * FORT_CAPTURE_DURATION;
}
