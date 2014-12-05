// move ship based on current angle
//-= because gamemaker is bad and 90 degrees is left instead of right
hspeed += (acceleration + friction) * cos(degtorad(image_angle));
vspeed -= (acceleration + friction) * sin(degtorad(image_angle));
