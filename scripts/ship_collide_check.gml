// Games Programming Assignment 1
// Add game feature:   Ship Movement and Collision (moving into walls/forts)
//                     (rotating ship collision checking)
// Student Number:     S10122326F / S10131808A
// Student Name:       Jeremy Lim / Elliot Tan

// get the object the ship collided with
var obj_collided = argument0;

// check if the ship is still colliding with the object
// (it may have already moved away because of bouncing)

// place_meeting() effectively moves the object to a new position,
// checks for a collision with another object, and then moves it back
if (place_meeting(self.x, self.y, obj_collided)) {
    // move ship away from colliding object
    // until it is not colliding with it
    do {
        // get angle from ship to colliding object
        var angle_ship_to_obj = point_direction(self.x, self.y,
            obj_collided.x, obj_collided.y);
            
        // move ship in the reverse direction
        self.x -= (acceleration + friction) * cos(degtorad(angle_ship_to_obj));
        self.y += (acceleration + friction) * sin(degtorad(angle_ship_to_obj));
   } until (!place_meeting(self.x, self.y, obj_collided));
}