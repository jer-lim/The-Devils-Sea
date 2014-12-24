if (owner == PLAYER_ONE) {
    with (ship1_obj) {
        if (ship_damage_queue_size > 0)
            ship_damage_queue_size--;
    }
}
else {
    with (ship2_obj) {
        if (ship_damage_queue_size > 0)
            ship_damage_queue_size--;
    }
}

instance_destroy();
