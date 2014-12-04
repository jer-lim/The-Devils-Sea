if(ulti_enabled){
    if(ship_type = SHIP_XEBEC){
        var cUVX = cos(degtorad(image_angle));
        var cUVY = -sin(degtorad(image_angle));
        hspeed += 40 * cUVX;
        vspeed += 40 * cUVY;
        max_speed += 40;
        //end ulti
        alarm[1] = 3 * room_speed;
    }
    
    //ulti cooldown
    ulti_enabled = false;
    alarm[2] = ulti_cooldown * room_speed;
    ulti_countdown = ulti_cooldown * room_speed;
}
