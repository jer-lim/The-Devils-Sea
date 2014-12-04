// move ship based on current angle
//-= because gamemaker is bad and 90 degrees is left instead of right
hspeed += (acceleration + friction) * cos(degtorad(image_angle));
vspeed -= (acceleration + friction) * sin(degtorad(image_angle));

/*
// limit maximum speed
// (vspeed and hspeed affects overall speed)
if (speed > max_speed){
    speed -= 30 / room_speed;
}
<<<<<<< HEAD
*/
=======
>>>>>>> 102449710e70305f8a9f29da4999fea641673a55
