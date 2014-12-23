// Games Programming Assignment 1
// Add game feature:   Pause menu (drawing of pause menu objects)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

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

        // handle game sounds
        audio_pause_all();
        audio_resume_sound(waves_sound);
        audio_resume_sound(background_sound)
        audio_sound_gain(background_sound, 1,
            audio_sound_get_track_position(background_sound));
        
        // create transparent background and logo
        pause_bg = instance_create(0, 0, menubg_obj);
        pause_bg.depth = -100;          // ensure bg is above everything else
        // pause_bg.image_alpha = 0.7;     // slight transparency
        pause_bg.image_alpha = 0;
        pause_titlelogo = instance_create(64, 30, titlelogosmall_obj);
        pause_titlelogo.depth = -101; 
        
        if (pause_btns) {
            // turn on pause menu buttons
            instance_activate_object(btn_resume_obj);
            instance_activate_object(btn_quit_obj);
        }
        
        // display player ship boards
        board1 = instance_create(room_width - 32, room_height - 230, hudbar1_obj);
        board2 = instance_create(room_width - 32, room_height - 30, hudbar2_obj);
        
        // var ship_display, radial_display;
        var x_from_edge = 32 + (board1.sprite_width*0.25);
        var y_from_edge = 30 + (board1.sprite_height*0.3);
        
        // player 1 ships and radial effects
        ship_display[0] = instance_create(room_width - x_from_edge - board1.sprite_width*0.5,
            room_height - y_from_edge - 200, ship_display_obj);
        ship_display[0].sprite_index = global.player_ships_selection[PLAYER_ONE, 1];
        
        ship_display[1] = instance_create(room_width - x_from_edge,
            room_height - y_from_edge - 200, ship_display_obj);
        ship_display[1].sprite_index = global.player_ships_selection[PLAYER_ONE, 2];
        
        // display radial effect over ship that is being used
        if (global.ships_lost[PLAYER_ONE] == 0) {
            radial_display[0] = instance_create(ship_display[0].x, ship_display[0].y, radhud1_obj);
        }
        else if (global.ships_lost[PLAYER_ONE] == 1) {
            radial_display[0] = instance_create(ship_display[1].x, ship_display[1].y, radhud1_obj);
            
            // display X over first ship that is dead
            cross_display[0] = instance_create(ship_display[0].x, ship_display[0].y, cross_obj);
        }
        else if (global.ships_lost[PLAYER_ONE] >= 2) {
            // display X over both ships
            cross_display[0] = instance_create(ship_display[0].x, ship_display[0].y, cross_obj);
            cross_display[1] = instance_create(ship_display[1].x, ship_display[1].y, cross_obj);
        }
        
        // player 2 ships and radial effects
        ship_display[2] = instance_create(room_width - x_from_edge - board1.sprite_width*0.5,
            room_height - y_from_edge, ship_display_obj);
        ship_display[2].sprite_index = global.player_ships_selection[PLAYER_TWO, 1];
        
        ship_display[3] = instance_create(room_width - x_from_edge,
            room_height - y_from_edge, ship_display_obj);
        ship_display[3].sprite_index = global.player_ships_selection[PLAYER_TWO, 2];
        
        // display radial effect over ship that is being used
        if (global.ships_lost[PLAYER_TWO] == 0) {
            radial_display[1] = instance_create(ship_display[2].x, ship_display[2].y, radhud2_obj);
        }
        else if (global.ships_lost[PLAYER_TWO] == 1) {
            radial_display[1] = instance_create(ship_display[3].x, ship_display[3].y, radhud2_obj);
            
            // display X over first ship that is dead
            ross_display[2] = instance_create(ship_display[2].x, ship_display[2].y, cross_obj);
        }
        else if (global.ships_lost[PLAYER_TWO] >= 2) {
            // display X over both ships
            cross_display[2] = instance_create(ship_display[2].x, ship_display[2].y, cross_obj);
            cross_display[3] = instance_create(ship_display[3].x, ship_display[3].y, cross_obj);
        }
        
        // show current scores
        create_postgame_score();
    }
    
    // draw sprite created of application surface
    draw_sprite(spr, 0, 0, 0);
    
    // animated fade in
    if (pause_bg.image_alpha < 0.8) {
        pause_bg.image_alpha += 0.05;
    }
}
// game is not paused
else {
}
