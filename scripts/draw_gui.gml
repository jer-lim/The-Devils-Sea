draw_set_font(ship_font);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(100, 715, "HP:");
draw_text(100, 750, "Traps:");
draw_text(200, 750, "Ulti:");

draw_text(room_width - 75, 715, "HP:");
draw_text(room_width - 75, 750, "Traps:");
draw_text(room_width - 250, 750, "Ulti:");

for(var i = 0; i < instance_count; ++i){
    var ins = instance_id[i];
    if(instance_exists(ins)){
        if(ins.object_index == ship1_obj || ins.object_index == ship2_obj){
            if(!ins.ulti_enabled){
                var ulti_display = string(floor(ins.ulti_countdown / room_speed)) + "s";
            }else{
                var ulti_display = "Ready!";
            }
            
            if(ins.object_index == ship1_obj){
                draw_set_color(c_blue);
            }else{
                draw_set_color(c_red);
            }
            draw_set_halign(fa_middle);
            draw_set_font(ship_font2);
            draw_text(ins.x, ins.y + 35, string(ins.hp) + " HP | " + string(ins.traps) + " Traps#Ulti " + ulti_display);
            
            draw_set_font(ship_font);
            draw_set_halign(fa_left);
            if(ins.object_index == ship1_obj){
                draw_text(110, 715, ins.hp);
                draw_text(110, 750, ins.traps);
                
                if(!ins.ulti_enabled){
                    draw_set_color(c_red);
                }
                draw_text(210, 750, ulti_display);
            }else{
                draw_set_color(c_red);
                draw_text(room_width - 65, 715, ins.hp);
                draw_text(room_width - 65, 750, ins.traps);
                if(!ins.ulti_enabled){
                    draw_set_color(c_red);
                }
                draw_text(room_width - 240, 750, ulti_display);
            }
        }
    }
}
