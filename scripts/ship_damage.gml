///ship_damage(min,max);
// reduces ship hp based on a range of values provided
var min_dmg = argument0;
var max_dmg = argument1;

var damage = round(random_range(min_dmg, max_dmg));

hp -= damage;
if (hp <= 0)
{
    hp = 0;
    alarm[4] = 2 * room_speed;
}

show_debug_message("HP: " + string(hp));
