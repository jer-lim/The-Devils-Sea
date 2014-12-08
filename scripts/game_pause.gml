pause_btns = argument0;

if (!paused) {
    draw = true;
    paused = true;
    visible = true;
    
    if (pause_btns) {
        // custom mouse cursor
        cursor_sprite = custom_cursor_sprite;
    }
}
else {
    paused = false;
    visible = false;
    
    // clear up memory
    if (instance_exists(pause_bg)) {
        with (pause_bg) instance_destroy();
    }
    if (instance_exists(pause_titlelogo)) {
        with (pause_titlelogo) instance_destroy();
    }
    /*
    if (instance_exists(ship_display)) {
        with (ship_display) instance_destroy();
    }
    if (instance_exists(radial_display)) {
        with (radial_display) instance_destroy();
    }
    if (instance_exists(board1)) {
        with (board1) instance_destroy();
    }
    if (instance_exists(board2)) {
        with (board2) instance_destroy();
    }
    if (instance_exists(cross_display)) {
        with (cross_display) instance_destroy();
    }
    */
    if (sprite_exists(spr))
        sprite_delete(spr);
    
    // reactivate game elements
    instance_activate_all();
    
    // deactivate pause menu
    instance_deactivate_object(btn_resume_obj);
    instance_deactivate_object(btn_quit_obj);
    instance_deactivate_object(hudbar1_obj);
    instance_deactivate_object(hudbar2_obj);
    instance_deactivate_object(ship_display_obj);
    instance_deactivate_object(radhud1_obj);
    instance_deactivate_object(radhud2_obj);
    instance_deactivate_object(cross_obj);
    
    // hide mouse cursor
    cursor_sprite = -1;
}
