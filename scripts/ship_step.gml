// keep object below global max speed
if(speed > SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER)
    speed = SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER;
    
// limit maximum speed
if (speed > max_speed){
    speed -= 100 * SHIP_SPEED_MULTIPLIER / room_speed;
}

/*
if (owner == 2)
 {
  if (speed > 0)
    show_debug_message(string(string(speed)));
    }
    */
   
// Xebec passive ability: more speed when heading towards other ship
if(ship_type == SHIP_XEBEC) {
    if (instance_exists(other_ship)) {
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
        
        // show_debug_message(string(owner) + ": " +string(max_speed));
    }
}

// boost time updates
if (rum_boost_time > 0) {
    rum_boost_time--;
}
if (divine_boost_time > 0) {
    divine_boost_time--;
    
    // move shield graphic
    divine_boost_shield.x = self.x;
    divine_boost_shield.y = self.y;
}
    
// if boost time reaches 0, set it to -1 flag
if (rum_boost_time == 0) {
    ship_reset_boost();
    rum_boost_time = -1;
}
if (divine_boost_time == 0) {
    divine_boost_time = -1;
    
    // destroy divine boost shield
    with (divine_boost_shield) {
        instance_destroy();
    }
    
    stop_shield_sound();
}

// ulti time update
if (ulti_countdown > 0)
    ulti_countdown--;
if (ulti_timer > 0)
    ulti_timer--;
    
// end ulti timer
if (ulti_timer == 0) {
    ulti_timer = -1;
    if(ship_type == SHIP_XEBEC)
        xebec_ulti_deactivate();
//     if(ship_type == SHIP_GALLEASS)
//         galleass_ulti_deactivate();
}

// movement animation
var player_color = make_color_rgb(22, 190, 254);
if (owner == PLAYER_TWO) player_color = make_color_rgb(255, 128, 128);

if (rum_boost_time > 0) {
    effect_create_below(ef_firework,
        x - cos(degtorad(image_angle)) * sprite_width * 0.2,
        y + sin(degtorad(image_angle)) * sprite_width * 0.2,
        0, player_color);
}
else if (speed > 0) {
    effect_create_below(ef_flare,
        x - cos(degtorad(image_angle)) * sprite_width * 0.2,
        y + sin(degtorad(image_angle)) * sprite_width * 0.2,
        0, player_color);
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
