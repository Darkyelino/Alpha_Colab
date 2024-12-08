mov_right = keyboard_check(vk_right);
mov_left = keyboard_check(vk_left);
mov_up = keyboard_check(vk_up) && !keyboard_check(vk_right) && !keyboard_check(vk_left);
mov_down = keyboard_check(vk_down) && !keyboard_check(vk_left) && !keyboard_check(vk_right);

if (mov_right){
	x += velocidade;
	image_xscale = 1;
	image_angle = 0;
}
else if (mov_left){
	x -= velocidade;
	image_angle = 0;
	image_xscale = -1;
}
if (mov_up){
	y -= velocidade;
	image_xscale = 1;
	image_angle = 90;
}
else if (mov_down){
	y += velocidade;
	image_xscale = 1;
	image_angle = -90;
}

if (!(mov_right || mov_left || mov_up || mov_down)){
	image_index = spr_pac_man[2];
}
