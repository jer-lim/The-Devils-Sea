///game_determine_winner

//prevent game from trying to find a winner after winner commits suicide
if(!global.winnerFound){
    
    var winner;
    if(global.ships_lost[PLAYER_ONE] < MAX_SHIPS) winner = PLAYER_ONE;
    else if(global.ships_lost[PLAYER_TWO] < MAX_SHIPS) winner = PLAYER_TWO;
    else winner = 0; //none
    
    var genText = instance_create(0, 0, generic_text_obj);
    genText.halign = fa_middle;
    genText.valign = fa_middle;
    genText.font = game_winner_font;
    genText.alpha = 1;
    genText.x = room_width / 2;
    genText.y = room_height / 2;
    
    if(winner > 0){
        if(winner == PLAYER_ONE) genText.color = c_blue;
        else genText.color = c_red;
        genText.text = "Player " + string(winner) + " wins!";
    }else{
        genText.color = c_black;
        genText.text = "Draw!";
    }
    
    global.winnerFound = true;
    global.winner = winner;
    global.wins[winner]++;
    
    with(alarmer_obj){
        alarm[2] = 2 * room_speed;
    }
}