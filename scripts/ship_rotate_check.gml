// ensures ship does not rotate into collisions or forts
var rotating_left = argument0;  // true: left; false: right

// place_meeting() effectively moves the object to a new position,
// checks for a collision with another object, and then moves it back
if (place_meeting(self.x, self.y, wall_obj)
    || place_meeting(self.x, self.y, fort_obj)) {
    if (rotating_left)
        image_angle -= turn_speed * (speed / max_speed)
            + (SHIP_BASE_TURN_SPEED / room_speed);
    else
        image_angle += turn_speed * (speed / max_speed)
            + (SHIP_BASE_TURN_SPEED / room_speed);
}
