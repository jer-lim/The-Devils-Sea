// Games Programming Assignment 1
// Add game feature:   Ship Collision effects
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

/*
* Giving ships a timeout after collisions prevents
* them from getting stuck to each other if they do
*/

if (collidable && other.collidable) {
    /*
    * Find reaction vector for own ship
    *
    * Get unit vector (direction of other ship)
    * cos(a) gets the x
    * sin(a) gets the y, negative because y is on top
    * See unit circle
    */
    var cUVX = cos(degtorad(other.direction));
    var cUVY = -sin(degtorad(other.direction));
    
    /*
    * If current ship is hitting with the front, knockback self to represent rebounding
    * (negative acceleration in current direction)
    */
    
    var shipFrontDirMin, shipFrontDirMax, isRammer, relativeDir;

    //avoid false positives because no direction if stationary
    if(hspeed != 0 || vspeed != 0){
        
        /*
        * Get front of ship
        * -45 and +45 to define it as a 90 degree arc
        */
        shipFrontDirMin = direction - 45;
        shipFrontDirMax = direction + 45;
        if(shipFrontDirMin < 0) shipFrontDirMin += 360;
        if(shipFrontDirMax > 360) shipFrontDirMax -= 360;
        
        isRammer = false;
        
        /*
        * Check if front of ship is colliding
        * Relative direction used because it's the easiest check as to whether the rammed ship is in front of the rammer based on their relative positions
        */
        relativeDir = point_direction(x, y, other.x, other.y); 
        if(shipFrontDirMin < shipFrontDirMax){
            if(relativeDir > shipFrontDirMin && relativeDir < shipFrontDirMax){
                isRammer = true;
            }
        }else{
            if((relativeDir > shipFrontDirMin && relativeDir <= 0)
                || (relativeDir >= 0 && relativeDir < shipFrontDirMax)){
                isRammer = true;
            }
        }
        
        if(isRammer){
            cUVX = -cos(degtorad(direction));
            cUVY = sin(degtorad(direction));
        }
    }
    
    var massRatio = 2 * other.mass / (mass + other.mass);
    var vDiffX = other.hspeed - hspeed;
    var vDiffY = other.vspeed - vspeed;
    var cUVdotvDiff = dot_product(cUVX, cUVY, vDiffX, vDiffY);
    
    /*
    * Apply damage
    * Check if being rammed from the side and apply a multiplier if so.
    */
    var rammedDirection = point_direction(x, y, other.x, other.y);
    if((angle_difference(image_angle, rammedDirection) >= 45 && angle_difference(image_angle, rammedDirection) < 135)
    || (angle_difference(image_angle, rammedDirection) >= -135 && angle_difference(image_angle, rammedDirection) < -45)){
        var damage_multiplier = 1.5;
    }else{
        var damage_multiplier = 1;
    }
    /*
    * damage_multiplier: whether it is hit from the side
    * ship_rammed_damage_multiplier: ship ram "resistance" - for xebec's ulti
    * RAM_DAMAGE_MULTIPLIER: multiply the ratio to get the actual damage
    */
    var damage = abs(massRatio * cUVdotvDiff * damage_multiplier * ship_rammed_damage_multiplier * RAM_DAMAGE_MULTIPLIER);
    ship_damage(damage * 0.9, damage * 1.1);
    
    /*
    * Find reaction vector for other ship
    */
    var cUVX2 = cos(degtorad(direction));
    var cUVY2 = -sin(degtorad(direction));
    
    var shipFrontDirMin2, shipFrontDirMax2, isRammer2, relativeDir2;
    
    //avoid false positives because no direction if stationary
    if(other.hspeed != 0 || other.vspeed != 0){
        
        //get front of ship
        shipFrontDirMin2 = other.image_angle - 45;
        shipFrontDirMax2 = other.image_angle + 45;
        if(shipFrontDirMin2 < 0) shipFrontDirMin2 += 360;
        if(shipFrontDirMax2 > 360) shipFrontDirMax2 -= 360;
        
        isRammer2 = false;
        
        //check if front of ship is colliding
        relativeDir2 = point_direction(other.x, other.y, x, y); 
        if(shipFrontDirMin2 < shipFrontDirMax2){
            if(relativeDir2 > shipFrontDirMin2 && relativeDir2 < shipFrontDirMax2){
                isRammer2 = true;
            }
        }else{
            if((relativeDir2 > shipFrontDirMin2 && relativeDir2 <= 0)
                || (relativeDir2 >= 0 && relativeDir2 < shipFrontDirMax2)){
                isRammer2 = true;
            }
        }
        
        if(isRammer2){
            cUVX2 = -cos(degtorad(other.direction));
            cUVY2 = sin(degtorad(other.direction));
        }
    }
    
    var massRatio2 = 2 * mass / (mass + other.mass);
    var vDiffX2 = hspeed - other.hspeed;
    var vDiffY2 = vspeed - other.vspeed;
    var cUVdotvDiff2 = dot_product(cUVX2, cUVY2, vDiffX2, vDiffY2);
    
    var rammedDirection2 = point_direction(other.x, other.y, x, y);
    if((angle_difference(other.image_angle, rammedDirection2) >= 45 && angle_difference(other.image_angle, rammedDirection2) < 135)
    || (angle_difference(other.image_angle, rammedDirection2) >= -135 && angle_difference(other.image_angle, rammedDirection2) < -45)){
        var damage_multiplier2 = 1.5;
    }else{
        var damage_multiplier2 = 1;
    }
    var damage2 = abs(massRatio2 * cUVdotvDiff2 * other.ship_rammed_damage_multiplier * damage_multiplier2 * RAM_DAMAGE_MULTIPLIER);
    with(other){
        ship_damage(damage2 * 0.9, damage2 * 1.1);
    }
    
    /*
    * Apply vectors
    */
    hspeed += massRatio * cUVdotvDiff * cUVX;
    vspeed += massRatio * cUVdotvDiff * cUVY;

    other.hspeed += massRatio2 * cUVdotvDiff2 * cUVX2;
    other.vspeed += massRatio2 * cUVdotvDiff2 * cUVY2;
    
    /*
    * Time out collisions
    */
    collidable = false;
    alarm[0] = room_speed / 2;
    other.collidable = false;
    other.alarm[0] = room_speed / 2;
    
    
}
