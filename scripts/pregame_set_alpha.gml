var btn_obj_array;
btn_obj_array[0] = btn_blue_obj;
btn_obj_array[1] = btn_red_obj;

// set the correct alpha values, depending if each button is selected or not
for (var o = 0; o < 2; o++) {
    for (var i = 0; i < instance_number(btn_obj_array[o]); i++) {
        var btn = instance_find(btn_blue_obj, i);
        if (btn.selected)
            btn.image_alpha = 1;
        else
            btn.image_alpha = 0;
    }
}
