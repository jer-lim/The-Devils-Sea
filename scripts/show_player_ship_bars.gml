with (pause_obj) {
    // if already showing HUD bars, don't do anything
    if (!showing_bars) {
        showing_bars = true;
        game_pause(false);
        
        // resume game after a few seconds
        alarm[0] = room_speed * 3;
    }
}