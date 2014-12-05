// reset ship attributes
max_speed = ship_max_speed[ship_type] * SHIP_SPEED_MULTIPLIER;
acceleration = ship_acceleration[ship_type] * SHIP_SPEED_MULTIPLIER / room_speed;
turn_speed = ship_turn_speed[ship_type] / room_speed;