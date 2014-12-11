// Games Programming Assignment 1
// Add game feature:   Ship Movement (moving ship in direction faced)
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// move ship based on current angle
hspeed += (acceleration + friction) * cos(degtorad(image_angle));
vspeed -= (acceleration + friction) * sin(degtorad(image_angle));
