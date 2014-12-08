// successfully captured
if (fort.capture_timer <= 0) {
    // change fort owner
    if (fort.owner == PLAYER_ONE)
        fort_set_owner(self.fort, PLAYER_TWO);
    else
        fort_set_owner(self.fort, PLAYER_ONE);

    // reset timer flag
    fort.capture_timer = room_speed * 5;
    
    // disengage fort target
    fort_arc_unacquire_target();
}
// passive fort "healing"
else {
    if (fort.capture_timer < room_speed * 5)
        fort.capture_timer++;
}

/*
* Rotate arc by 90 degrees per second if no target,
* otherwise fix aim on target
*/
if(!fort.targetAcquired) {
    image_angle += 90 / room_speed;
}
else {
    // ensure target is still alive
    if (instance_exists(fort.target) && fort.target.hp > 0) {
        // get the angle from fort arc to the target
        fort.targetAngle = point_direction(x, y, fort.target.x, fort.target.y);
        
        // compute the angle difference from where the fort arc is currently pointing
        var angleDiff = angle_difference(image_angle, fort.targetAngle);
        
        // speed up arc movement to "catch" ship
        if(angleDiff > 3) {
            image_angle -= 90 / room_speed * 2;
        }
        else if(angleDiff < -3) {
            image_angle += 90 / room_speed * 2;
        }
        // angle diff is small, start attacking ship
        else {
            image_angle = fort.targetAngle;
            
            // fort attack is still on cooldown
            if (fort.attack_timer > 0) {
                fort.attack_timer--;
            }
            // fort attack is available
            else if (fort.attack_timer == 0) {
                // reset attack timer
                var timer_modifier = 1;
                if (self.ulti) timer_modifier = 0.5;
                fort.attack_timer = room_speed * FORT_ATTACK_RELOAD * timer_modifier;
                
                // create cannonball slightly ahead of ship's direction
                var dirX = cos(degtorad(self.image_angle));
                var dirY = -sin(degtorad(self.image_angle));
                var cannonball;
                if (self.ulti) {
                    cannonball = instance_create(self.x + dirX * 50, self.y + dirY * 50, cannonball_obj);
                }
                else {
                    cannonball = instance_create(self.x + dirX * 40, self.y + dirY * 40, fort_cannonball_obj);
                    cannonball.image_xscale = 0.5;
                    cannonball.image_yscale = 0.5;
                }
                cannonball.owner = fort.owner;
                
                // move cannonball in direction
                cannonball.hspeed = dirX * FORT_ATTACK_SPEED;
                cannonball.vspeed = dirY * FORT_ATTACK_SPEED;
                
                // cannonball travels a limited distance
                var dist_modifier = 1;
                if (self.ulti) dist_modifier = 2;
                with (cannonball) {
                    alarm[0] = room_speed * FORT_ATTACK_LENGTH * dist_modifier;
                }
            }
        }
    }
}
