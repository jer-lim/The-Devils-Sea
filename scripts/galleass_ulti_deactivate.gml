// loop through each fort instance
for(var i = 0; i < instance_number(fort_obj); i++) {
    var fort_inst = instance_find(fort_obj, i);
    
    // if owner matches, cancel ulti effect
    if (fort_inst.owner == self.owner) {
        fort_inst.arc.image_xscale = 1;
        fort_inst.arc.image_yscale = 1;
        
        // deactivation graphics
        if (self.owner == PLAYER_ONE)
            effect_create_below(ef_ring, fort_inst.x, fort_inst.y, 1,
                make_color_rgb(22, 190, 254));
        else if (self.owner == PLAYER_TWO)
            effect_create_below(ef_ring, fort_inst.x, fort_inst.y, 1,
                make_color_rgb(255, 128, 128));
    }
}
