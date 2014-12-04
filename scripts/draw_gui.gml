for(var i = 0; i < instance_count; ++i){
    var ins = instance_id[i];
    if(instance_exists(ins)){
        if(ins.object_index == ship1_obj || ins.object_index == ship2_obj){
            draw_set_font(ship_font);
            draw_set_color(c_black);
            draw_set_halign(fa_center);
            draw_set_valign(fa_middle);
            draw_text(ins.x, ins.y + 35, "HP " + string(ins.hp) + "|" + string(ins.traps) + " TR");
        }
    }
}
