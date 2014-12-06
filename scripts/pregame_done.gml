for (var p = 1; p <= 2; p++) {
    for (var s = 1; s <= MAX_SHIPS; s++) {
        // if a ship was not selected
        if (global.player_ships_selection[p, s] == -1) {
            var randomize_complete = false;
            
            do {
                // randomize ship type
                var random_type = floor(random_range(0, 4));
                
                // ensure ship type doesn't already exist in player's array
                var type_exists = false;
                for (i = 1; i <= MAX_SHIPS; i++) {
                    // ship type exists, re-roll random type
                    if (global.player_ships_selection[p, i] == random_type) {
                        type_exists = true;
                        break;
                    }
                }
                
                // ship type doesn't exist, assign ship to player
                if (!type_exists) {
                    global.player_ships_selection[p, s] = random_type;
                    randomize_complete = true;
                }
            } until (randomize_complete);
        }
    }
}
