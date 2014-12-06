/* Bottom HUD Jeremy doesn't like
draw_set_font(ship_font);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text(100, room_height - 50, "HP:");
draw_text(100, room_height - 15, "Traps:");
draw_text(200, room_height - 15, "Ulti:");

draw_text(room_width - 75, room_height - 50, "HP:");
draw_text(room_width - 75, room_height - 15, "Traps:");
draw_text(room_width - 250, room_height - 15, "Ulti:");
*/

for(var i = 0; i < instance_count; ++i){
    var ins = instance_id[i];
    if(instance_exists(ins)) {
        if(ins.object_index == ship1_obj || ins.object_index == ship2_obj){
            if(!ins.ulti_countdown == 0){
                var ulti_display = string(floor(ins.ulti_countdown / room_speed)) + "s";
            } else{
                var ulti_display = "Ready!";
            }
            
            
            /*
            * Draw players' HUD
            */
            if(ins.object_index == ship1_obj){
                draw_set_color(c_blue);
            }else{
                draw_set_color(c_red);
            }
            draw_set_halign(fa_middle);
            draw_set_font(ship_font2);
            
            var offset = 35;
            if(ins.y > room_height - 100) offset = -55;
            draw_text(ins.x, ins.y + offset, string(ins.hp) + " HP | " + string(ins.traps) + " Traps#Ulti " + ulti_display);
            
            draw_set_font(ship_font);
            draw_set_halign(fa_left);
            
            /* Bottom HUD Jeremy doesn't like
            if(ins.object_index == ship1_obj) {
                draw_set_color(c_white);
                draw_text(110, room_height - 50, ins.hp);
                draw_text(110, room_height - 15, ins.traps);
                
                if(!ins.ulti_countdown == 0) {
                    draw_set_color(c_red);
                }
                draw_text(210, room_height - 50, ulti_display);
            }else{
                draw_set_color(c_white);
                draw_text(room_width - 65, room_height - 50, ins.hp);
                draw_text(room_width - 65, room_height - 15, ins.traps);
                if(!ins.ulti_countdown == 0) {
                    draw_set_color(c_red);
                }
                draw_text(room_width - 240, room_height - 15, ulti_display);
            }
            */
        }
    }
}
