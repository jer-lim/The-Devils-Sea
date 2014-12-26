if (global.sound) {
    global.sound = false;
    image_index = 1;
    audio_set_master_gain(0, 0);
}
else {
    global.sound = true;
    image_index = 0;
    audio_set_master_gain(0, 1);
}
