if (keyboard_check_pressed(vk_backspace)) {
	game_restart();
}

if (keyboard_check_pressed(vk_enter)){
	if (!global.moving){
		if(keyboard_check_pressed(vk_enter)) {
			global.moving = true;
		}
	}
	switch(status){
		case GAME_STATUS.START:
			status = GAME_STATUS.GAME;
		case GAME_STATUS.GAME:
			break;
		case GAME_STATUS.WIN:
		case GAME_STATUS.LOSE:
		case GAME_STATUS.RESTART:
			game_restart();
			break;
	}
}

if (status == GAME_STATUS.GAME) {
	if (score >= 50) {
		global.moving = false;
		status = GAME_STATUS.WIN;
	}
}