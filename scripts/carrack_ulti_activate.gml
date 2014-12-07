// Carrack's ulti abilitiy: fire 5 cannonballs in a cone,
// towards the opposing ship direction

// if (!instance_exists(self.other_ship)) exit;

// get angle (in degrees) towards other ship
var angle = point_direction(self.x, self.y, self.other_ship.x, self.other_ship.y);

// launch 5 cannonballs
var cannonballs;
for (var i = 0; i < 5; i++) {
    // calculate unit vectors for direction towards other ship
    // this angle is modified so that the 5 cannonballs are fired in a cone
    var dirX = cos(degtorad(angle + (i-2)*10));
    var dirY = -sin(degtorad(angle + (i-2)*10));

    cannonballs[i] = instance_create(self.x + dirX * 40, self.y + dirY * 40,
        cannonball_obj);
    cannonballs[i].owner = self.owner;
        
    // move cannonballs in direction
    cannonballs[i].hspeed = dirX * CARRACK_PASSIVE_SPEED;
    cannonballs[i].vspeed = dirY * CARRACK_PASSIVE_SPEED;
}
