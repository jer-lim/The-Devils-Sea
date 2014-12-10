// Games Programming Assignment 1
// Add game feature:   Ship Movement
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// move ship based on current angle
hspeed += (acceleration + friction) * cos(degtorad(image_angle));
vspeed -= (acceleration + friction) * sin(degtorad(image_angle));
/*
// if ship is stuck in a corner or fort
// (i.e. cannot rotate/move)
if (place_meeting(self.x + hspeed, self.y + vspeed, wall_obj)
    || place_meeting(self.x + hspeed, self.y + vspeed, fort_obj)) {
    // can be checked by checking if speed is below a certain amount
    // if (power(speed, 2) <= power(acceleration + friction, 2) * 2) {
    if (speed <= (acceleration + friction) * 2) {
        var cUVX = cos(degtorad(image_angle));
        var cUVY = -sin(degtorad(image_angle));
        hspeed += 50 * cUVX * SHIP_SPEED_MULTIPLIER;
        vspeed += 50 * cUVY * SHIP_SPEED_MULTIPLIER;
    }
}
*/
