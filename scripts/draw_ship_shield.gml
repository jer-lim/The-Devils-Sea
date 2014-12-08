// show shield graphic
var shield_inst = instance_create(x, y - 5, shield_obj);
with (shield_inst) {
    // set alarm timer for destroying heart image
    alarm[0] = room_speed * 0.5;
}
