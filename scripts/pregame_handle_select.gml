var selected_ship = argument0;
var selected_player = argument1;

// if button was already selected, deselect it
if (selected) {
    selected = false;
    image_alpha = 0;
    
    for (var i = 1; i <= MAX_SHIPS; i++) {
        if (global.player_ships[selected_player, i] == selected_ship)
            global.player_ships[selected_player, i] = -1;
    }
}
// if not already selected, select it
else {
    selected = true;
    image_alpha = 1;
    
    // check if any unselected slots (-1 flag) and slot in ship choice
    var slot_available = false;
    for (var i = 1; i <= MAX_SHIPS; i++) {
        if (global.player_ships[selected_player, i] == -1) {
            global.player_ships[selected_player, i] = selected_ship;
            slot_available = true;
            break;
        }
    }
    
    // if there was no slot, replace first ship selected,
    // by moving up selected ships in array (similar to a stack)
    if (!slot_available) {
        for (var i = 1; i <= MAX_SHIPS; i++) {
            // if not last element in array, replace it with next ship in line
            if (i < MAX_SHIPS) {
                global.player_ships[selected_player, i] =
                    global.player_ships[selected_player, i+1];
            }
            // if last element, slot in newly selected ship
            else {
                global.player_ships[selected_player, i] = selected_ship;
            }
        }
    }
}

show_debug_message("Printing array for player " + string(selected_player));
for (var i = 1; i <= MAX_SHIPS; i++) {
    show_debug_message(global.player_ships[selected_player, i]);
}
