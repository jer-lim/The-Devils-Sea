// ship_load(ship_type)

/*
* Load stats here because gamemaker is bad
* and room creation code is called AFTER object creation code
*/
load_stats();

// ship attributes
hp = floor(ship_hp[ship_type] * 0.1);
// hp = floor(ship_hp[ship_type] * HP_MULTIPLIER);
max_speed = ship_max_speed[ship_type] * SHIP_SPEED_MULTIPLIER;
acceleration = ship_acceleration[ship_type] * SHIP_SPEED_MULTIPLIER / room_speed;
turn_speed = ship_turn_speed[ship_type] / room_speed;
mass = ship_mass[ship_type];

collidable = true;
owner = 0;
other_ship = 0;
ship_rammed_damage_multiplier = 1;

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

// xebec passive ability
xebec_passive = false;
