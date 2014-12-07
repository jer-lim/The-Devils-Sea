if (!paused) {
    paused = true;
    draw = true;
    
    // custom mouse cursor
    cursor_sprite = custom_cursor_sprite;
}
else {
    paused = false;
    
    if (instance_exists(pause_bg)) {
        with (pause_bg) instance_destroy();
    }
    
    if (sprite_exists(spr))
        sprite_delete(spr);
    
    // reactivate game elements
    instance_activate_all();
    
    // hide mouse cursor
    cursor_sprite = -1;
}
