// Carrack's passive ability: fires a small cannonball in the
// direction it is facing, every 3 seconds

// create cannonball slightly ahead of ship's direction
var dirX = cos(degtorad(self.image_angle));
var dirY = -sin(degtorad(self.image_angle));
var cannonball = instance_create(
    self.x + dirX * 40, self.y + dirY * 40, cannonball_obj);
cannonball.owner = self.owner;

// move cannonball in direction
cannonball.hspeed = dirX * CARRACK_PASSIVE_SPEED;
cannonball.vspeed = dirY * CARRACK_PASSIVE_SPEED;

// cannonball travels a limited distance
alarm[0] = room_speed * CARRACK_PASSIVE_LENGTH;

// reactivate timer for next attack
alarm[1] = room_speed * CARRACK_PASSIVE_RELOAD;
