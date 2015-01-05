var damage = argument0;

if (ship_damage_queue_index >= 0) {
    // first damage in list
    if (ship_damage_queue_index == 0) {
        ship_damage_list[0] = damage;
    }
    // second damage number or beyond
    else {
        var empty_slot_found = false;
    
        // check list from first index to find "empty slot"
        for (var i = 0; i < ship_damage_queue_index - 1; i++) {
            // if flag is -1, it is an empty slot (number already disappeared_
            if (ship_damage_list[i] == -1) {
                ship_damage_list[i] = damage;
                ship_damage_queue_index = i;
                empty_slot_found = true;
                break;
            }
        }
        
        // if no empty slot was found, append to end of array
        if (!empty_slot_found) {
            ship_damage_list[ship_damage_queue_index] = damage;
        }
    }

    // create damage display object
    var damage_display = instance_create(x, y - 40
        - (ship_damage_queue_index) * 25,
        damage_float_obj);
    
    damage_display.damage = damage;
    damage_display.owner = owner;
    damage_display.queue_index = ship_damage_queue_index;
    
    // set init timer    
    with (damage_display) {
        if (other.ship_damage_queue_index == 0) // || empty_slot_found)
            damage_display_init();
        else {
            alarm[1] = room_speed * 0.05 * (other.ship_damage_queue_index);
        }
    }
}