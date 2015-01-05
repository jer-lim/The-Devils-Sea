// Mouse Leave may be called AFTER the next Mouse Enter
// (because Game Maker)

// so, check if mouse is colliding with any pregame btn obj
// if it is, don't turn of drawing description
if (!position_meeting(mouse_x, mouse_y, btn_pregame_obj)) {
    with (desc_text_obj) {
        draw_desc = false;
    }
}
