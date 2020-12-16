/// @description Insert description here
// You can write your code in this editor

cooldown += 1;

if(instance_exists(objectPlayer)){
	move_towards_point(objectPlayer.x, objectPlayer.y, spd);
}


if(cooldown >= 60){

	instance_create_layer(x, y, "projectiles", objectEnemyBullet);

	cooldown = 0;
}

image_angle = direction;

if (hp <= 0){
	with (objectScore) playerScore += 1;
	instance_destroy();
}