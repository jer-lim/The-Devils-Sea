if(owner == PLAYER_ONE){
    draw_set_color(c_blue);
}else{
    draw_set_color(c_red);
}
draw_set_halign(fa_middle);
draw_set_font(damage_font);

draw_text(x, y, string(damage));
y -= 20 / room_speed;
// show_debug_message("drew");
