// Games Programming Assignment 1
// Add game feature:   Game score
// Student Number:     S10122326F, S10131808A
// Student Name:       Jeremy Lim, Elliot Tan

// Player 1 Score
p1_won_text = instance_create(
    board1.x - board1.sprite_width - 80,
    board1.y - board1.sprite_height * 0.5,
    generic_text_obj);
p1_won_text.halign = fa_middle;
p1_won_text.valign = fa_middle;
p1_won_text.font = rounds_won_font;
p1_won_text.alpha = 1;
p1_won_text.color = c_blue;
p1_won_text.depth = -105;
p1_won_text.text = string(global.wins[PLAYER_ONE]);

// Player 2 Score
p2_won_text = instance_create(
    board2.x - board2.sprite_width - 80,
    board2.y - board2.sprite_height * 0.5,
    generic_text_obj);
p2_won_text.halign = fa_middle;
p2_won_text.valign = fa_middle;
p2_won_text.font = rounds_won_font;
p2_won_text.alpha = 1;
p2_won_text.color = c_red;
p2_won_text.depth = -105;
p2_won_text.text = string(global.wins[PLAYER_TWO]);

// Wins
rounds_won_text = instance_create(
    p1_won_text.x,
    p1_won_text.y - 130,
    generic_text_obj);
rounds_won_text.halign = fa_middle;
rounds_won_text.valign = fa_middle;
rounds_won_text.font = menu_font;
rounds_won_text.alpha = 1;
// rounds_won_text.color = c_black;
rounds_won_text.depth = -105;
rounds_won_text.text = string("Wins");

// Fleet
fleet_text = instance_create(
    board1.x - board1.sprite_width * 0.5,
    board1.y - board1.sprite_height * 0.5 - 130,
    generic_text_obj);
fleet_text.halign = fa_middle;
fleet_text.valign = fa_middle;
fleet_text.font = menu_font;
fleet_text.alpha = 1;
fleet_text.color = c_black;
fleet_text.depth = -105;
fleet_text.text = string("Fleet");
