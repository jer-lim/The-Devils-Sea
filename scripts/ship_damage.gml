// reduces ship hp based on a range of values provided
var min_dmg = argument0;
var max_dmg = argument1;

var damage = (argument0 + argument1) / 2;

self.hp -= damage;
if (self.hp < 0)
{
    self.hp = 0;
    instance_destroy();
    show_debug_message("Ship destroyed");
}
