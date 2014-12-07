if (!paused) {
    paused = true;
    draw = true;
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
}
