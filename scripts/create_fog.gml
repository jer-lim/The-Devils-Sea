var no_of_fogs = 2;

// if create more fogs
if (argument0) {
    no_of_fogs = 4;
}

// init fog random positions
var fog_x_pos, fog_y_pos, fog_y_offset = -90;

// x positions
for (var i = 0; i < no_of_fogs; i++)
    fog_x_pos[i] = random_range(0, room_width);

// y positions
fog_y_pos[0] = 0 + fog_y_offset;
fog_y_pos[1] = room_height * 0.5 + fog_y_offset;
if (argument0) {
    fog_y_pos[2] = room_height * 0.25 + fog_y_offset;
    fog_y_pos[3] = room_height * 0.75 + fog_y_offset;
}
    
// create fog graphics
var fogs, fog_index = 0;
for (var i = 0; i < no_of_fogs; i++) {
    fogs[fog_index++] = instance_create(fog_x_pos[i], fog_y_pos[i], fog_obj);
    fogs[fog_index++] = instance_create(fogs[fog_index-1].x
        - fogs[fog_index-1].sprite_width, fog_y_pos[i], fog_obj);
}

// make sure fog is above, init animation speed
fog_index = 0;
for (var i = 0; i < no_of_fogs; i++) {
    var random_anim_speed = random_range(1, 3);
    with (fogs[fog_index++]) {
        depth = -1;
        animation_speed = random_anim_speed;
    }
    with (fogs[fog_index++]) {
        depth = -1;
        animation_speed = random_anim_speed;
    }
}
