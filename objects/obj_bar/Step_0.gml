if (!global.moving){
	exit;
}

if (keyboard_check_pressed(vk_space)) {
	rotation = !rotation;
}

if (rotation) {
	image_angle += (1 + (score/30));
} else {
	image_angle -= (1 + (score/30));
}

if(keyboard_check_pressed(vk_space)) {
	if(!place_meeting(x,y,obj_coin)){
		global.moving = false;
		obj_game.status = GAME_STATUS.LOSE;
	}
}