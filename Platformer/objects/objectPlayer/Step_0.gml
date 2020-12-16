/// @description Insert description here
// You can write your code in this editor


// input check

if(keyboard_check(ord("R"))){
	room_goto(roomGame);
}


key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

// speed

hsp = move * walksp;
vsp += grv;


//collision horizontal



if(place_meeting(x+hsp,y,objectWall)) {
	while(!place_meeting(x+sign(hsp), y, objectWall)){
		x += (sign(hsp));
	}
	hsp = 0;
}

x += hsp;


//collision vertical



if(place_meeting(x,y + vsp,objectWall)) {
	while(!place_meeting(x, y + sign(vsp), objectWall)){
		y += (sign(vsp));
	}
	vsp = 0;
}

if(key_jump and vsp == 0){
	vsp -= 6;
}


y += vsp;

if(win) game_restart();

