// Games Programming Assignment 1
// Add game feature:   Pause game without pause menu
// Student Number:     S10131808A
// Student Name:       Elliot Tan

var seconds_to_display = argument0;

with (pause_obj) {
    // if already showing HUD bars, don't do anything
    if (!showing_bars) {
        showing_bars = true;
        
        // end game
        if (seconds_to_display <= 0) {
            end_game = global.winner;
            game_pause(true);
        }

        // resume game after a few seconds
        else if (seconds_to_display > 0) {
            game_pause(false);
            alarm[0] = room_speed * seconds_to_display;
        }
    }
}
