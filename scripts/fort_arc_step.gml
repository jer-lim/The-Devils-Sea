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
    else {
        image_angle = fort.targetAngle;
    }
}