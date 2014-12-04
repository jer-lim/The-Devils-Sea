// ship_damage(min,max);

<<<<<<< HEAD
// check if ship does not have divine intervention boost
if (divine_boost_time <= 0) {
    // reduces ship hp based on a range of values provided
    var min_dmg = argument0;
    var max_dmg = argument1;
    
    var damage = round(random_range(min_dmg, max_dmg));
    
    hp -= damage;
    if (hp < 0)
    {
        hp = 0;
        instance_destroy();
    }
    
    show_debug_message("HP: " + string(hp));
}
=======
var damage = round(random_range(min_dmg, max_dmg));

hp -= damage;
if (hp <= 0)
{
    hp = 0;
    alarm[4] = 2 * room_speed;
}

show_debug_message("HP: " + string(hp));
>>>>>>> 102449710e70305f8a9f29da4999fea641673a55
