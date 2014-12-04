// ship_load(ship_type)

/*
* Load stats here because gamemaker is bad
* and room creation code is called AFTER object creation code
*/
load_stats();

hp = ship_hp[ship_type];
max_speed = ship_max_speed[ship_type] * SHIP_SPEED_MULTIPLIER;
acceleration = ship_acceleration[ship_type] * SHIP_SPEED_MULTIPLIER / room_speed;
turn_speed = ship_turn_speed[ship_type] / room_speed;
mass = ship_mass[ship_type];
sprite_index = ship_sprite[ship_type];
mask_index = ship_mask[ship_type];
ulti_cooldown = ship_ulti_cooldown[ship_type];

collidable = true;
owner = 0;
ulti_enabled = true;
ulti_countdown = 0;
traps = TRAP_START_NUM;
image_angle = 0;
friction = SHIP_FRICTION;

// boost timers
rum_boost_time = -1;
divine_boost_time = -1;
