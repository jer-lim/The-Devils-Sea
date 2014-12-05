// keep object below global max speed
if(speed > SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER)
    speed = SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER;
    
// limit maximum speed
if (speed > max_speed){
    speed -= 100 * SHIP_SPEED_MULTIPLIER / room_speed;
}
    
// Xebec passive ability: more speed when heading towards other ship
if(ship_type == SHIP_XEBEC){
    var shipFrontDirMin = image_angle - 45;
    var shipFrontDirMax = image_angle + 45;
    if(shipFrontDirMin < 0) shipFrontDirMin += 360;
    if(shipFrontDirMax > 360) shipFrontDirMax -= 360;
    
    var relativeDir = point_direction(x, y, other_ship.x, other_ship.y); 
    var isFacingOther = false;
    if(shipFrontDirMin < shipFrontDirMax){
        if(relativeDir > shipFrontDirMin && relativeDir < shipFrontDirMax){
            isFacingOther = true;
        }
    }else{
        if((relativeDir > shipFrontDirMin && relativeDir <= 0)
            || (relativeDir >= 0 && relativeDir < shipFrontDirMax)){
            isFacingOther = true;
        }
    }
    
    if(isFacingOther && !xebec_passive){
        max_speed += 10 * SHIP_SPEED_MULTIPLIER;
        xebec_passive = true;
    }else if(!isFacingOther && xebec_passive){
        max_speed -= 10 * SHIP_SPEED_MULTIPLIER;
        xebec_passive = false;
    }
    
    show_debug_message(string(owner) + string(max_speed));
}

// boost time updates
if (rum_boost_time > 0) {
    rum_boost_time--;
}
if (divine_boost_time > 0) {
    divine_boost_time--;
}
    
// if boost time reaches 0, set it to -1 flag
if (rum_boost_time == 0) {
    ship_reset_boost();
    rum_boost_time = -1;
}
if (divine_boost_time == 0) {
    divine_boost_time = -1;
}

// ulti time update
if (ulti_countdown > 0)
    ulti_countdown--;
if (ulti_timer > 0)
    ulti_timer--;
    
// end ulti timer
if (ulti_timer == 0) {
    ulti_timer = -1;
    if(ship_type = SHIP_XEBEC)
        xebec_ulti_deactivate();
    if(ship_type = SHIP_GALLEASS)
        galleass_ulti_deactivate();
}

// death animation
if(hp <= 0) {
    speed = 0;
    max_speed = 1;
    acceleration = 1;
    turn_speed = 1;
    mass = 1;
    collidable = false;
    traps = 0;
    image_angle += 5;
    image_xscale = image_xscale * 0.99;
    image_yscale = image_yscale * 0.99;
}

//ulti cooldown bar
greenbar.x = x;
greenbar.y = y + 60;
greenbar.image_xscale = (1 - ulti_countdown / (ship_ulti_cooldown[ship_type] * room_speed)) * 1.2;

