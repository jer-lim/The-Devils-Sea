// rotate ship based on current speed
image_angle += turn_speed * (speed / max_speed)
    + (SHIP_BASE_TURN_SPEED / room_speed);
// make angle stay within 0 to 359
if (image_angle >= 360) {
    image_angle -= 360;
}

// ensures ship does not rotate into collisions or forts
ship_rotate_check(true);
