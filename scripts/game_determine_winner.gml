///game_determine_winner

// Games Programming Assignment 1
// Add game feature:   Game end
// Student Number:     S10122326F
// Student Name:       Jeremy Lim

//prevent game from trying to find a winner after winner commits suicide
if(!global.winnerFound){
    var winner;
    if(global.ships_lost[PLAYER_ONE] < MAX_SHIPS) winner = PLAYER_ONE;
    else if(global.ships_lost[PLAYER_TWO] < MAX_SHIPS) winner = PLAYER_TWO;
    else winner = 0; //none
    
    global.winnerFound = true;
    global.winner = winner;
    global.wins[winner]++;
    
    show_player_ship_bars(0);
}
