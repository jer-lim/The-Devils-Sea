var obj_collided = argument0;

if (place_meeting(self.x, self.y, obj_collided)) {
    // move ship away from colliding object
    // until it is not colliding with it
    //do {
        // get angle from ship to colliding object
        var angle_ship_to_obj = point_direction(self.x, self.y,
            obj_collided.x, obj_collided.y);
        
        // ship collided on its right
        if (angle_ship_to_obj >= 0 && angle_ship_to_obj <= 45
            || angle_ship_to_obj >= 315 && angle_ship_to_obj < 360)
        {
            self.x -= 1;//(acceleration + friction);
        }
        if (angle_ship_to_obj >= 45 && angle_ship_to_obj <= 135)
        {
            self.y += 1;//(acceleration + friction);
        }
        if (angle_ship_to_obj >= 135 && angle_ship_to_obj <= 225)
        {
            self.x += 1;//(acceleration + friction);
        }
        if (angle_ship_to_obj >= 225 && angle_ship_to_obj <= 315)
        {
            self.y -= 1;//(acceleration + friction);
        }
            
        /*
        // move ship in the reverse direction
        self.x -= (acceleration + friction) * cos(degtorad(angle_ship_to_obj));
        self.y += (acceleration + friction) * sin(degtorad(angle_ship_to_obj));
        */
   // } until (!place_meeting(self.x, self.y, obj_collided));
}
