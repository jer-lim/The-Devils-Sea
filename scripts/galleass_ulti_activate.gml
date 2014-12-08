// loop through each fort instance
for(var i = 0; i < instance_number(fort_obj); i++) {
    var fort_inst = instance_find(fort_obj, i);
    
    // if owner matches, apply ulti effect
    if (fort_inst.owner == self.owner) {
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
            
        // deactivation
        with (fort_inst) {
            alarm[0] = room_speed * 3;
        }
    }
}