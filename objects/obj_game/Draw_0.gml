draw_set_halign(fa_center);
draw_set_valign(fa_center);

switch(status){
	case GAME_STATUS.LOSE:
		draw_set_font(fnt_end);
		var c = c_red;
		draw_set_halign(fa_center);
		draw_text_color(room_width/2,200,"GAME OVER!",c,c,c,c,1);
		draw_set_font(fnt_title);
		draw_text(room_width/2,250,"FINAL SCORE: " + string(score));
		draw_text(room_width/2,300,">> PRESS ENTER TO RESTART <<");
		break;
	case GAME_STATUS.GAME:
		draw_set_font(fnt_text);
		c = c_green
		draw_text_color(room_width/2,room_height/2,score,c,c,c,c,1);
		break;
	case GAME_STATUS.START:
		draw_set_font(fnt_title);
		var c = c_olive;
		draw_text_color(room_width/2,200,"CRACK THE SAFE",c,c,c,c,1)
		draw_set_font(fnt_desc);
		draw_text(room_width/2, 300,
		@"Score 50 points to win!
Press SPACE over each coin!
>> PRESS ENTER TO START <<");
		break;
	case GAME_STATUS.WIN:
		draw_set_font(fnt_end);
		var c = c_green;
		draw_set_halign(fa_center);
		draw_text_color(room_width/2,200,"YOU WIN!",c,c,c,c,1);
		draw_set_font(fnt_text);
		c = c_green
		draw_text_color(room_width/2,room_height/2,"50",c,c,c,c,1);
		draw_set_font(fnt_title);
		draw_text(room_width/2,400,">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
}