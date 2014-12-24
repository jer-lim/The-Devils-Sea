var damage = argument0;

if (ship_damage_queue_size > 0) {
    // create damage display object
    var damage_display = instance_create(x, y - 40
        - (ship_damage_queue_size-1) * 25,
        damage_float_obj);
    
    damage_display.damage = damage;
    damage_display.owner = owner;
    
    // set init timer    
    with (damage_display) {
        if (other.ship_damage_queue_size - 1 == 0)
            damage_display_init();
        else {
            alarm[1] = room_speed * 0.05 * (other.ship_damage_queue_size-1);
        }
    }
}
