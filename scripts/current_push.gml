// Games Programming Assignment 1
// Add game feature:   Current / wind effects
// Student Number:     S10131808A
// Student Name:       Elliot Tan

/*
 * current pushes ship in direction slightly
 * push is affected by:
    * current direction: direction
    * ship mass: heavier ships are harder to push
*/

// calculate unit vectors for direction
var cur_direction = self.direction;
var dirX = cos(degtorad(cur_direction));
var dirY = -sin(degtorad(cur_direction));

// modify ship's h and v speeds
var old_speed = other.speed;
var hspeed_mod = dirX * CURRENT_STRENGTH_MULTIPLIER / (other.mass * 0.1);
var vspeed_mod = dirY * CURRENT_STRENGTH_MULTIPLIER / (other.mass * 0.1);
other.hspeed += hspeed_mod;
other.vspeed += vspeed_mod;

// make current weaker if ship is going against it,
// and stronger if the ship is going in line with it
// (to allow going against the currentm when at a certain speed)
if (other.speed < old_speed) {
    other.hspeed -= hspeed_mod * 0.7;
    other.vspeed -= vspeed_mod * 0.7;
}
// ship is not going against current, increase current strength
else {
    other.hspeed += hspeed_mod * 0.7;
    other.vspeed += vspeed_mod * 0.7;
}
