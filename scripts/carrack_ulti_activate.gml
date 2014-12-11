// Games Programming Assignment 1
// Add game feature:   Carrack active ability
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// Carrack's ulti abilitiy: fire 5 cannonballs in a cone,
// from the ship's side, in the opposing ship's general direction

// if no enemy exists, disallow activation of ability
if (!instance_exists(self.other_ship)) exit;

// get angle (in degrees) towards other ship
var other_ship_angle = point_direction(self.x, self.y,
    self.other_ship.x, self.other_ship.y);

// angle difference: returns a value from -180 to 180
// (i.e. negative value: enemy is on leftwards side,
//       positive value; enemy is on rightwards side)
if (angle_difference(image_angle, other_ship_angle) > 0){
    var angle = image_angle - 90;
}
else {
    var angle = image_angle + 90;
}

// launch 5 cannonballs in a cone shape
var cannonballs;
for (var i = 0; i < 5; i++) {
    // calculate unit vectors for direction towards other ship
    // this angle is modified so that the 5 cannonballs are fired in a cone
    var dirX = cos(degtorad(angle + (i-2)*10));
    var dirY = -sin(degtorad(angle + (i-2)*10));

    // create cannonball object (positioned slightly ahead
    // of ship's front) and assign owner
    cannonballs[i] = instance_create(self.x + dirX * 40, self.y + dirY * 40,
        cannonball_obj);
    cannonballs[i].owner = self.owner;
        
    // move cannonballs in direction
    cannonballs[i].hspeed = dirX * CARRACK_PASSIVE_SPEED;
    cannonballs[i].vspeed = dirY * CARRACK_PASSIVE_SPEED;
}

// play sound
audio_play_sound(cannon2_sound, 40, 0);
