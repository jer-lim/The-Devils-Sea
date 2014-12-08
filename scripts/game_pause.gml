if (!paused) {
    paused = true;
    draw = true;
    visible = true;
    
    // custom mouse cursor
    cursor_sprite = custom_cursor_sprite;
}
else {
    paused = false;
    visible = false;
    
    if (instance_exists(pause_bg)) {
        with (pause_bg) instance_destroy();
    }
    
    if (sprite_exists(spr))
        sprite_delete(spr);
    
    // reactivate game elements
    instance_activate_all();
    
    // deactivate pause menu
    instance_deactivate_object(btn_resume_obj);
    instance_deactivate_object(btn_quit_obj);
    
    // hide mouse cursor
    cursor_sprite = -1;
}
