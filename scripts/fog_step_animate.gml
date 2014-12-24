// move fog to the left
x -= animation_speed;

// if reached off screen left
if (x < -sprite_width) {
    // move back to right side
    x = room_width;
}
