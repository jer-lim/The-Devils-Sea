/*
* Rotate arc by 90 degrees per second if no target,
* otherwise fix aim on target
*/
if(!fort.targetAcquired){
    image_angle += 90 / room_speed;
}else{
    fort.targetAngle = point_direction(x, y, fort.target.x, fort.target.y);
    var angleDiff = angle_difference(image_angle, fort.targetAngle);
    if(angleDiff > 3){
        image_angle -= 90 / room_speed * 2;
    }else if(angleDiff < -3){
        image_angle += 90 / room_speed * 2;
    }else{
        image_angle = fort.targetAngle;
    }
}