// Games Programming Assignment 1
// Add game feature:   Ship Movement
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// move ship based on current angle
hspeed += (acceleration + friction) * cos(degtorad(image_angle));
vspeed -= (acceleration + friction) * sin(degtorad(image_angle));

/*
if (place_meeting(self.x + hspeed, self.y + vspeed, wall_obj)
    || place_meeting(self.x + hspeed, self.y + vspeed, fort_obj)) {
    if (speed <= friction) {
        var cUVX = cos(degtorad(image_angle));
        var cUVY = -sin(degtorad(image_angle));
        hspeed += 40 * cUVX * SHIP_SPEED_MULTIPLIER;
        vspeed += 40 * cUVY * SHIP_SPEED_MULTIPLIER;
    }
}
*/