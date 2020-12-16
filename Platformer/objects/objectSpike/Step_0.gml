/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y+vsp, objectWall)){
	cooldown = 0;
	vsp *= -1;
}

y += vsp;

cooldown += 1;

if cooldown >= 50{
	cooldown = 0;
	vsp *= -1;
}
