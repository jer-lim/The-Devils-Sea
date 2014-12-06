// constantly check for left mouse button press
if (mouse_check_button_pressed(mb_left)) {
    // get mouse press position
    var mouseX = mouse_x;
    var mouseY = mouse_y;
    
    show_debug_message(string(mouseX) + ", " + string(mouseY));
}
