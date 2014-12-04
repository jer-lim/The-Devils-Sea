// determine random position for chest to spawn
var randX = random_range(0, room_width);
var randY = random_range(0, room_height);

// TODO: make chest not spawn where there are forts/other chests

// create effect for chest
chest_spawn_effect_at(randX, randY);

// create chest object
instance_create(randX, randY, chest_obj);
alarm[0] = round(random_range(CHEST_SPAWN_MIN, CHEST_SPAWN_MAX)) * room_speed;
