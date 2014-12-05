// if fort is not owned by ship in range, begin capturing
if (other.owner != self.fort.owner) {
    if (other.owner == PLAYER_ONE)
        effect_create_below(ef_ring, x, y, 2, make_color_rgb(22, 190, 254));
    else if (other.owner == PLAYER_TWO)
        effect_create_below(ef_ring, x, y, 2, make_color_rgb(255, 128, 128));
        
    // update capture timer
    if (self.fort.capture_timer > 0) {
        self.fort.capture_timer -= 2;
        
        // if ship type is galleass, capturing speed is 2.5x faster
        if (other.ship_type == SHIP_GALLEASS) {
            self.fort.capture_timer -= 1.5;
        }
    }
}
// if fort owner is in range, increase fort "healing"
else {
    if (self.fort.capture_timer < room_speed * 5)
        self.fort.capture_timer++;
}