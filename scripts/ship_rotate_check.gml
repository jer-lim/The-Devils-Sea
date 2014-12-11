// Games Programming Assignment 1
// Add game feature:   Ship Movement (rotating ship collision checking)
//                     (this function has been replaced with ship_collide_check())
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// ensures ship does not rotate into collisions or forts
var rotating_left = argument0;  // true: left; false: right

// place_meeting() effectively moves the object to a new position,
// checks for a collision with another object, and then moves it back
if (place_meeting(self.x, self.y, wall_obj)
    || place_meeting(self.x, self.y, fort_obj)) {
    // rotate ship back to original angle if
    // the rotation makes it collide with a wall or fort
    if (rotating_left) {
        image_angle -= turn_speed * (speed / max_speed)
            + (SHIP_BASE_TURN_SPEED / room_speed);
    }
    else {
        image_angle += turn_speed * (speed / max_speed)
            + (SHIP_BASE_TURN_SPEED / room_speed);
    }
}
