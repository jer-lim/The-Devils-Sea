// ship_damage(min,max);

// check if ship does not have divine intervention boost
if (divine_boost_time <= 0) {
    // reduces ship hp based on a range of values provided
    var min_dmg = argument0;
    var max_dmg = argument1;
    
    var damage = round(random_range(min_dmg, max_dmg));
    hp -= damage;
    
    var damage_display = instance_create(x, y, damage_float_obj);
    damage_display.damage = damage;
    damage_display.owner = owner;
    
    // TODO: print damage numbers
    
    // if ship is dead
    if (hp < 0)
    {
        hp = 0;
        // ship death alarm to remove ship from game
        alarm[4] = 2 * room_speed;
    }
}