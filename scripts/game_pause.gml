// Games Programming Assignment 1
// Add game feature:   Pause menu (pausing/un-pausing game)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// flag to determine whether or not pause menu btns should be shown
pause_btns = argument0;

if (!paused) {
    draw = true;
    paused = true;
    visible = true;
    
    // pause shield sound
    for (var i = 1; i <= 2; i++) {
        with (global.ships[i]) {
            if (audio_is_playing(divine_boost_sound)) {
                audio_pause_sound(divine_boost_sound);   
            }
        }
    }
    
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
    if (instance_exists(rounds_won_text)) {
        with (rounds_won_text) instance_destroy();
    }
    if (instance_exists(p1_won_text)) {
        with (p1_won_text) instance_destroy();
    }
    if (instance_exists(p2_won_text)) {
        with (p2_won_text) instance_destroy();
    }
    if (instance_exists(fleet_text)) {
        with (fleet_text) instance_destroy();
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
    instance_deactivate_object(radhud1_obj);
    instance_deactivate_object(radhud2_obj);
    instance_deactivate_object(cross_obj);
    
    // hide mouse cursor
    cursor_sprite = -1;
    
    // resume shield sound
    for (var i = 1; i <= 2; i++) {
        with (global.ships[i]) {
            if (audio_is_paused(divine_boost_sound)) {
                audio_resume_sound(divine_boost_sound);   
            }
        }
    }
}
