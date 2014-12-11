// Games Programming Assignment 1
// Add game feature:   Treasure chest effects (boost time ended)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

// reset ship attributes to original values
max_speed = ship_max_speed[ship_type] * SHIP_SPEED_MULTIPLIER;
acceleration = ship_acceleration[ship_type] * SHIP_SPEED_MULTIPLIER / room_speed;
turn_speed = ship_turn_speed[ship_type] / room_speed;
