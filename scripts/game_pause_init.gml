// Games Programming Assignment 1
// Add game feature:   Pause menu (intialize pause object)
// Student Number:     S10131808A
// Student Name:       Elliot Tan

paused = false;     // game state
draw = false;       // controller for drawing to temp surface
end_game = -1;      // -1: not ended; 0: draw; 1; 2;
spr = -1;           // holds sprite that displays application image during pause

pause_bg = -1;      // holds background for pause menu
pause_titlelogo = -1;

// displays for ship fleet HUD
ship_display = -1;
radial_display = -1;
cross_display = -1;
board1 = -1;
board2 = -1;

visible = false;
showing_bars = false; // whether the game is forcing the showing of HUD bars
pause_btns = false; // to show pause btns or not
