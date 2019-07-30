score = 0;

enum GAME_STATUS {
	START,
	GAME,
	WIN,
	LOSE,
	RESTART
};

status = GAME_STATUS.START;

global.abs_min = 45;
global.abs_max = 200;
global.moving = false;

safe = instance_create_layer(room_width/2,room_height/2,"Safe",obj_safe);
//default scale 64 x 64
//upscaled to 512 x 512
safe.image_xscale = 8;
safe.image_yscale = 8;

bar = instance_create_layer(room_width/2,room_height/2,"Bar",obj_bar);
bar.image_xscale = 8;
bar.image_yscale = 8;
bar.image_angle = 90;
bar.rotation = -1;
bar.moving = false;

var coin = instance_create_layer(room_width/2,room_height/2,"Coins",obj_coin);
if (coin.image_angle > 45 && coin.image_angle < 225){ //270 - 45
	coin.image_angle += 180;
}