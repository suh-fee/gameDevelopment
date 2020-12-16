// movement

if(keyboard_check(ord("D"))){
	x = x + 4;
}
if(keyboard_check(ord("A"))){
	x = x - 4;
}
if(keyboard_check(ord("W"))){
	y = y - 4;
}
if(keyboard_check(ord("S"))){
	y = y + 4;
}

cooldown = cooldown + 1;
	
// direction

image_angle = point_direction(x,y,mouse_x,mouse_y)
	
// shoot

if(mouse_check_button(mb_left) && cooldown >= 10){

	instance_create_layer(x, y, "projectiles", objectBullet);

	cooldown = 0;
}
	
	

if(keyboard_check_pressed(ord("B"))){
	
	
	if(bombs != 0){
		objectScore.playerScore += instance_number(objectEnemy);
		instance_destroy(objectEnemy);
		instance_destroy(objectEnemyBullet);
		bombs -= 1;
	}
	
	
}

if hp == 0{
	game_restart();
}

