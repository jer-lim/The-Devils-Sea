/// ship_load(ship_type)

// Games Programming Assignment 1
// Add game feature:   Spawn ship
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

/*
* Load stats into arrays
*/
load_stats();

// ship attributes
hp = floor(ship_hp[ship_type] * HP_MULTIPLIER);
max_speed = ship_max_speed[ship_type] * SHIP_SPEED_MULTIPLIER;
acceleration = ship_acceleration[ship_type] * SHIP_SPEED_MULTIPLIER / room_speed;
turn_speed = ship_turn_speed[ship_type] / room_speed;
mass = ship_mass[ship_type];

collidable = true;

owner = 0;
other_ship = 0;
ship_rammed_damage_multiplier = 1;
bounce_sound = -1;

traps = TRAP_START_NUM;
if (ship_type == SHIP_CORVETTE) traps += 2;

image_angle = 0;
friction = SHIP_FRICTION;

// indexes
sprite_index = ship_sprite[ship_type];
mask_index = ship_mask[ship_type];

// ulti
ulti_timer = -1;
ulti_countdown = 0;

// boost timers
rum_boost_time = -1;
divine_boost_time = -1;
divine_boost_shield = -1;
divine_boost_sound = -1;

// xebec passive ability
xebec_passive = false;
