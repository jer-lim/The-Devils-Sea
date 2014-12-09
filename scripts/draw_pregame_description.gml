// if draw description is on
if (draw_desc) {
    var ship_sprite = -1;
    
    // check ship number
    if (ship_no == 0)
        ship_sprite = desc_xebec_sprite;
    else if (ship_no == 1)
        ship_sprite = desc_carrack_sprite;
    else if (ship_no == 2)
        ship_sprite = desc_galleass_sprite;
    else if (ship_no == 3)
        ship_sprite = desc_corvette_sprite;
    
    if (ship_sprite > -1) {
        // draw ship description sprite
        draw_sprite(ship_sprite, 0, x, y);
    }
}
