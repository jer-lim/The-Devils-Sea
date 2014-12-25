if (fade_in) {
    if (image_alpha < 1)
        image_alpha += 1 / fade_time_seconds / room_speed;
    else {
        image_alpha = 1;
    }
}
else {
    if (image_alpha > 0)
        image_alpha -= 1 / fade_time_seconds / room_speed;
    else {
        image_alpha = 0;
    }
}
