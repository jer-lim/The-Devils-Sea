if(ship_type = SHIP_XEBEC){
    var cUVX = cos(degtorad(image_angle));
    var cUVY = -sin(degtorad(image_angle));
    hspeed += 40 * cUVX;
    vspeed += 40 * cUVY;
    max_speed += 40;
    alarm[1] = 5 * room_speed;
}