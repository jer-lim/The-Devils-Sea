// Games Programming Assignment 1
// Add game feature:   Ship Movement
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// rotate ship based on current speed
image_angle += turn_speed * (speed / max_speed)
    + (SHIP_BASE_TURN_SPEED / room_speed);

// ensures ship does not rotate into collisions or forts
ship_rotate_check(true);
