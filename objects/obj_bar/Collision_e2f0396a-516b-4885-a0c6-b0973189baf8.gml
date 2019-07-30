if(keyboard_check_pressed(vk_space)) {
	instance_destroy(obj_coin);

	//create new coin
	new_pos = irandom_range(global.abs_min,global.abs_max - (3*score));
	var new_coin = instance_create_layer(room_width/2,room_height/2,"Coins",obj_coin);
	if (rotation > 0) {
		new_coin.image_angle = image_angle + new_pos;
	} else {
		new_coin.image_angle = image_angle - new_pos;
	}
	score++;
}