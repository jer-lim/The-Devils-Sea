var genText = instance_create(room_width / 3, room_height / 4, generic_text_obj);
genText.halign = fa_middle;
genText.valign = fa_middle;
genText.font = rounds_won_font;
genText.alpha = 1;
genText.color = c_blue;
genText.text = string(global.wins[PLAYER_ONE]);

genText = instance_create(room_width / 3 * 2, room_height / 4, generic_text_obj);
genText.halign = fa_middle;
genText.valign = fa_middle;
genText.font = rounds_won_font;
genText.alpha = 1;
genText.color = c_red;
genText.text = string(global.wins[PLAYER_TWO]);

genText = instance_create(room_width / 2, room_height / 4, generic_text_obj);
genText.halign = fa_middle;
genText.valign = fa_middle;
genText.font = menu_font;
genText.alpha = 1;
genText.color = c_black;
genText.text = string("Rounds#Won");
