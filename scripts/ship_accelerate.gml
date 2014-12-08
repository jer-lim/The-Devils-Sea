// move ship based on current angle
//-= because gamemaker is bad and 90 degrees is left instead of right
hspeed += (acceleration + friction) * cos(degtorad(image_angle));
vspeed -= (acceleration + friction) * sin(degtorad(image_angle));

/*
if (owner == PLAYER_ONE)
    effect_create_below(ef_flare, x, y, 1, make_color_rgb(22, 190, 254));
else
    effect_create_below(ef_flare, x, y, 1, make_color_rgb(255, 128, 128));
*/