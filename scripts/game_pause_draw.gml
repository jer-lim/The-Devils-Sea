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
        
        // create transparent background and logo
        pause_bg = instance_create(0, 0, menubg_obj);
        pause_bg.depth = -100;          // ensure bg is above everything else
        pause_bg.image_alpha = 0.7;     // slight transparency
        pause_titlelogo = instance_create(64, 30, titlelogosmall_obj);
        pause_titlelogo.depth = -101; 
        
        if (pause_btns) {
            // turn on pause menu buttons
            instance_activate_object(btn_resume_obj);
            instance_activate_object(btn_quit_obj);
        }
        
        // display player ship boards
        var board1 = instance_create(room_width - 32, room_height - 230, hudbar1_obj);
        var board2 = instance_create(room_width - 32, room_height - 30, hudbar2_obj);
        
        // global.player_ships_selection[player nubmer, ship number];
        var ship_display;
        var x_from_edge = 32 + (board1.sprite_width*0.25);
        var y_from_edge = 30 + (board1.sprite_height*0.3);
        
        // player 1 ships and radial effects
        ship_display[0] = instance_create(room_width - x_from_edge - board1.sprite_width*0.5,
            room_height - y_from_edge - 200, ship_display_obj);
        ship_display[0].sprite_index = global.player_ships_selection[PLAYER_ONE, 1];
        
        ship_display[1] = instance_create(room_width - x_from_edge,
            room_height - y_from_edge - 200, ship_display_obj);
        ship_display[1].sprite_index = global.player_ships_selection[PLAYER_ONE, 2];
        
        // player 2 ships and radial effects
        ship_display[2] = instance_create(room_width - x_from_edge - board1.sprite_width*0.5,
            room_height - y_from_edge, ship_display_obj);
        ship_display[2].sprite_index = global.player_ships_selection[PLAYER_TWO, 1];
        
        ship_display[3] = instance_create(room_width - x_from_edge,
            room_height - y_from_edge, ship_display_obj);
        ship_display[3].sprite_index = global.player_ships_selection[PLAYER_TWO, 2];

    }
    
    // draw sprite created of application surface
    draw_sprite(spr, 0, 0, 0);
}
