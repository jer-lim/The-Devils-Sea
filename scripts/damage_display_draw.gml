if(owner == PLAYER_ONE){
    draw_set_color(c_blue);
}else{
    draw_set_color(c_red);
}
draw_set_halign(fa_middle);
draw_set_font(damage_font);
draw_set_alpha(image_alpha);

draw_text(x, y, string(damage));
y -= 20 / room_speed;
image_alpha -= 0.03;
// show_debug_message("drew");
