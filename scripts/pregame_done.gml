for (var p = 1; p <= 2; p++) {
    for (var s = 1; s <= MAX_SHIPS; s++) {
        // if a ship was not selected
        if (global.player_ships[p, s] == -1) {
            // randomize ship type
            global.player_ships[p, s] = floor(random_range(0, 4));
        }
    }
}
