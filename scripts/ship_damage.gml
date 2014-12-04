var damage = argument0;

self.hp -= damage;
if (self.hp < 0)
{
    self.hp = 0;
    instance_destroy();
    show_debug_message("Ship destroyed");
}
