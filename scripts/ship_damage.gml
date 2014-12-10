/// ship_damage(min,max);

// Games Programming Assignment 1
// Add game feature:   Ship damage
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

// check if ship does not have divine intervention boost
if (divine_boost_time <= 0) {
    // reduces ship hp based on a range of values provided
    var min_dmg = argument0;
    var max_dmg = argument1;
    
    var damage = round(random_range(min_dmg, max_dmg));
    if(room != controls){
        hp -= damage;
    }
    
    // display damage number
    var damage_display = instance_create(x, y - 40, damage_float_obj);
    damage_display.damage = damage;
    damage_display.owner = owner;
    
    /*
    * Play shattering sound
    */
    var rand = random_range(0, 3);
    if(rand < 1) audio_play_sound(collision1_sound, 50, 0);
    else if(rand < 2) audio_play_sound(collision2_sound, 50, 0);
    else if(rand < 3) audio_play_sound(collision3_sound, 50, 0);
    
    // if ship is dead
    if (hp < 0)
    {
        hp = 0;
        // ship death alarm to remove ship from game
        alarm[4] = 2 * room_speed;
        
        //play sinking sound
        audio_play_sound(sinking_sound, 80, 0);
    }
}
