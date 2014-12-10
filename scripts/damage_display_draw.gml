// Games Programming Assignment 1
// Add game feature:   HUD (Damage display)
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

if(owner == PLAYER_ONE){
    draw_set_color(c_blue);
}else{
    draw_set_color(c_red);
}
draw_set_halign(fa_middle);
draw_set_font(damage_font);
draw_set_alpha(text_alpha);
draw_text(x, y, string(damage));
draw_set_alpha(1);
y -= 20 / room_speed;
text_alpha -= 0.03;
// show_debug_message("drew");
