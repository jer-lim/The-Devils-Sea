// rotate ship based on current speed
image_angle += turn_speed * (speed / max_speed)
    + (SHIP_BASE_TURN_SPEED / room_speed);
// make angle stay within 0 to 359
if (image_angle >= 360) {
    image_angle -= 360;
}
/* direction += turn_speed;
if (direction >= 360) {
    direction -= 360;
}
*/

/*
vspeed = current_speed * cos(degtorad(image_angle));
hspeed = current_speed * sin(degtorad(image_angle));
*/