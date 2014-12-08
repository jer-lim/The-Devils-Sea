pause_btns = argument0;

if (!paused) {
    draw = true;
    paused = true;
    visible = true;
    
    // custom mouse cursor
    cursor_sprite = custom_cursor_sprite;
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
    
    // hide mouse cursor
    cursor_sprite = -1;
}
