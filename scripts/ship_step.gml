//keep object below global max speed
if(speed > SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER)
    speed = SHIP_MAX_SPEED * SHIP_SPEED_MULTIPLIER;
    
if(ulti_countdown > 0) ulti_countdown--;

if(hp <= 0){
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
