if(!ulti_countdown == 0){
    var ulti_display = string(floor(ulti_countdown / room_speed)) + "s";
} else{
    var ulti_display = "Ready!";
}


/*
* Draw players' HUD
*/
if(object_index == ship1_obj){
    draw_set_color(c_blue);
}else{
    draw_set_color(c_red);
}
draw_set_halign(fa_middle);
draw_set_font(ship_font2);

var offset = 35;
if(y > room_height - 100) offset = -55;
draw_text(x, y + offset, string(hp) + " HP | " + string(traps) + " Traps#Ulti " + ulti_display);

draw_set_font(ship_font);
draw_set_halign(fa_left);

greenbar.x = x;
greenbar.y = y + 60;
greenbar.image_xscale = (1 - ulti_countdown / (ship_ulti_cooldown[ship_type] * room_speed)) * 1.2;

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
