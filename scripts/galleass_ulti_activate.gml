// Games Programming Assignment 1
// Add game feature:   Galleass active ability
// Student Number:     S10131808A
// Student Name:       Elliot Tan

var no_of_forts_affected = 0;

// loop through each fort instance in game
for(var i = 0; i < instance_number(fort_obj); i++) {
    var fort_inst = instance_find(fort_obj, i);
    
    // if owner matches, apply ulti effect
    if (fort_inst.owner == self.owner) {
        no_of_forts_affected++;
    
        // double fort range effect
        fort_inst.arc.image_xscale = 2;
        fort_inst.arc.image_yscale = 2;
        fort_inst.arc.ulti = true;
        
        // activation graphics
        if (self.owner == PLAYER_ONE)
            effect_create_below(ef_ring, fort_inst.x, fort_inst.y, 2,
                make_color_rgb(22, 190, 254));
        else if (self.owner == PLAYER_TWO)
            effect_create_below(ef_ring, fort_inst.x, fort_inst.y, 2,
                make_color_rgb(255, 128, 128));
            
        // ability deactivation timer
        with (fort_inst) {
            alarm[0] = room_speed * GALLEASS_ACTIVE_DURATION;
        }
    }
}

if (no_of_forts_affected > 0) {
    // play sound
    audio_play_sound(galleass_active_sound, 40, 0);
}