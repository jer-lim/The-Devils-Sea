var black_bg = instance_create(0, 0, black_bg_obj);

with (black_bg) {
    fade_in = other.argument0;
    fade_time_seconds = other.argument1;
    
    if (fade_in)
        image_alpha = 0;
    else
        image_alpha = 1;
}
