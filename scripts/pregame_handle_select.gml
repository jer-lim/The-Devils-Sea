var selected_ship = argument0;
var selected_player = argument1;

// if button was already selected, deselect it 
if (selected) {
    selected = false;
    image_blend = make_color_rgb(255, 255, 255);
    
    // find correct button to deselect
    var index = 0;
    for (index = 0; index <= MAX_SHIPS; index++) {
        if (global.player_ships_selection[selected_player, index] == selected_ship) {
            global.player_ships_selection[selected_player, index] = -1;
            break;
        }
    }
    
    // push up array elements (to cover up the -1 slot) from deselected slot
    // this ensures that the first element is always the oldest selected choice
    for (var i = index; i <= MAX_SHIPS; i++) {
        // if not last element, move up following ships in array
        if (i < MAX_SHIPS) {
            global.player_ships_selection[selected_player, i] =
                global.player_ships_selection[selected_player, i+1];
        }
        // if last element, set it to -1
        else {
            global.player_ships_selection[selected_player, i] = -1;
        }
    }
}
// if not already selected, select it
else {
    selected = true;
    if (selected_player == PLAYER_ONE) {
        image_blend = make_color_rgb(0, 255, 255);
    }
    else {
        image_blend = make_color_rgb(150, 0, 0);
    }
    
    // check if any unselected slots (-1 flag) and slot in ship choice
    var slot_available = false;
    for (var i = 1; i <= MAX_SHIPS; i++) {
        if (global.player_ships_selection[selected_player, i] == -1) {
            global.player_ships_selection[selected_player, i] = selected_ship;
            slot_available = true;
            break;
        }
    }
    
    // if there was no slot, replace first ship selected,
    // by moving up selected ships in array (similar to a stack)
    if (!slot_available) {
        // deselect first element of array, as it will be removed from array
        global.pregame_btns[selected_player,
            global.player_ships_selection[selected_player, 1]].selected = false;
        global.pregame_btns[selected_player,
            global.player_ships_selection[selected_player, 1]].image_blend = 
            make_color_rgb(255, 255, 255);
    
        for (var i = 1; i <= MAX_SHIPS; i++) {
            // if not last element in array, replace it with next ship in line
            if (i < MAX_SHIPS) {
                global.player_ships_selection[selected_player, i] =
                    global.player_ships_selection[selected_player, i+1];
            }
            // if last element, slot in newly selected ship
            else {
                global.player_ships_selection[selected_player, i] = selected_ship;
            }
        }
    }
}