// ship_damage(min,max);

// check if ship does not have divine intervention boost
if (divine_boost_time <= 0) {
    // reduces ship hp based on a range of values provided
    var min_dmg = argument0;
    var max_dmg = argument1;
    
    var damage = round(random_range(min_dmg, max_dmg));
    hp -= damage;
    
<<<<<<< HEAD
    var damage_display = instance_create(x, y - 40, damage_float_obj);
=======
    // display damage number
    var damage_display = instance_create(x, y, damage_float_obj);
>>>>>>> 7741bad34727d62f1b8424b389670c654d2820b9
    damage_display.damage = damage;
    damage_display.owner = owner;
    
    // if ship is dead
    if (hp < 0)
    {
        hp = 0;
        // ship death alarm to remove ship from game
        alarm[4] = 2 * room_speed;
    }
}
