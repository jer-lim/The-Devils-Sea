// array to store selected ship values
globalvar player_ships_selection;
global.player_ships_selection[PLAYER_ONE, 1] = -1;
global.player_ships_selection[PLAYER_ONE, 2] = -1;
global.player_ships_selection[PLAYER_TWO, 1] = -1;
global.player_ships_selection[PLAYER_TWO, 2] = -1;

// array to store all ship button objects
globalvar pregame_btns;
global.pregame_btns[PLAYER_ONE, SHIP_XEBEC] = btn_1_xebec_obj;
global.pregame_btns[PLAYER_ONE, SHIP_CARRACK] = btn_1_carrack_obj;
global.pregame_btns[PLAYER_ONE, SHIP_GALLEASS] = btn_1_galleass_obj;
global.pregame_btns[PLAYER_ONE, SHIP_CORVETTE] = btn_1_corvette_obj;
global.pregame_btns[PLAYER_TWO, SHIP_XEBEC] = btn_2_xebec_obj;
global.pregame_btns[PLAYER_TWO, SHIP_CARRACK] = btn_2_carrack_obj;
global.pregame_btns[PLAYER_TWO, SHIP_GALLEASS] = btn_2_galleass_obj;
global.pregame_btns[PLAYER_TWO, SHIP_CORVETTE] = btn_2_corvette_obj;
