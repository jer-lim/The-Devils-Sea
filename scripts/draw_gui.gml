for(var i = 0; i < instance_count; ++i){
    var ins = instance_id[i];
    if(instance_exists(ins)){
        if(ins.object_index == ship1_obj || ins.object_index == ship2_obj){
            if(!ins.ulti_enabled){
                var ulti_display = string(floor(ins.ulti_countdown / room_speed));
            }else{
                var ulti_display = "READY";
            }
            draw_set_font(ship_font);
            draw_set_halign(fa_center);
            draw_set_valign(fa_middle);
            draw_text(ins.x, ins.y + 35, "HP " + string(ins.hp)
                + " | TRAP " + string(ins.traps)
                + "#ULTI " + ulti_display);
        }
    }
}
