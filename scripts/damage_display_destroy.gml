if (owner == PLAYER_ONE) {
    with (ship1_obj) {
        ship_damage_list[other.queue_index] = -1;
    }
}
else {
    with (ship2_obj) {
        ship_damage_list[other.queue_index] = -1;
    }
}

instance_destroy();