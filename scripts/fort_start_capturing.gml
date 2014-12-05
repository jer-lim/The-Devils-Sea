if (other.owner != self.owner) {
    if (other.owner == PLAYER_ONE)
        effect_create_below(ef_ring, x, y, 2, make_color_rgb(22, 190, 254));
    else if (other.owner == PLAYER_TWO)
        effect_create_below(ef_ring, x, y, 2, make_color_rgb(255, 128, 128));
}
