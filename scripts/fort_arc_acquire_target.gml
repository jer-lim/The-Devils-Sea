// Games Programming Assignment 1
// Add game feature:   Fort target acquisition
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

/*
* Code run when fort arc collides with
* ship that does not "own" it.
*/

if (other.owner != fort.owner){
    fort.targetAcquired = true;
    fort.target = other.id;
    
    // unacquire target after 2 seconds
    alarm[0] = 2 * room_speed;
}
