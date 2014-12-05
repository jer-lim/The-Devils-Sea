// keep object below global max speed
if(speed > SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER)
    speed = SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER;

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
