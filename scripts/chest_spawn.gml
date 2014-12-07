var randX = 0;
var randY = 0;
var chest;
var position_valid = false;

// temporarily create chest off-screen
chest = instance_create(-50, -50, chest_obj);

// ensure chest doesnt spawn in wall or fort
do {
    position_valid = true;

    // determine random position for chest to spawn
    randX = random_range(0+chest.sprite_width*0.5, room_width-chest.sprite_width*0.5);
    randY = random_range(0+chest.sprite_height*0.5, room_height-chest.sprite_height*0.5);
    
    // check each fort inst positions for collisions with new chest position
    for (var i = 0; i < instance_number(fort_obj); i++ ) {
        
        var fort_inst = instance_find(fort_obj, i);
        if (collision_ellipse(
            randX-chest.sprite_width*0.5, randY-chest.sprite_height*0.5,
            randX+chest.sprite_width*0.5, randY+chest.sprite_height*0.5,
            fort_inst, false, true))
        {
        show_debug_message("!!!");
            position_valid = false;
            break;
        }
    }
} until (position_valid);

// create effect for chest
chest_spawn_effect_at(randX, randY);

// move chest to correct position
chest.x = randX;
chest.y = randY;
alarm[0] = round(random_range(CHEST_SPAWN_MIN, CHEST_SPAWN_MAX)) * room_speed;