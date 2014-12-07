// if the game is paused
if (paused) {
    // if surface should be drawn (occurs only once)
    if (draw) {
        // surface variable to store surface to be created
        var surface = surface_create(room_width, room_height);
        
        // set drawing target to the surface ("temp screen")
        surface_set_target(surface);
        
        // draw the application surface ("screenshot" of window) to surface
        draw_surface(application_surface, 0, 0);
        
        // set drawing target back to normal screen
        surface_reset_target();
        
        // create a sprite from the temp surface created
        spr = sprite_create_from_surface(surface, 0, 0, room_width, room_height, false, false, 0, 0);
        
        // destroy and free temp surface from memory
        surface_free(surface);
        
        // turn off drawing, deactivate game elements
        draw = false;
        instance_deactivate_all(true);
        
        // create transparent background
        pause_bg = instance_create(0, 0, menu_obj);
        pause_bg.depth = -100;          // ensure bg is above everything else
        pause_bg.image_alpha = 0.8;     // slight transparency
    }
    
    // draw sprite created of application surface
    draw_sprite(spr, 0, 0, 0);
    
    // draw pause message
    draw_set_font(menu_font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(room_width / 2, room_height / 2, "- GAME PAUSED -#Press [Esc] to resume.");
    
    // TODO: draw pause menu
    // other problems: pause message is hidden below bg depth.
}