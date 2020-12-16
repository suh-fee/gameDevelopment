/// @description Insert description here
// You can write your code in this editor


// input check


if(keyboard_check(ord("R"))){
	if other.check == true{
		other.x=other.checkx;
		other.y=other.checky;
		other.hsp = 0;
		other.vsp = 0;

	} else {
		room_restart();
	}
}



key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;
var step = 0;
var debugstring = "";

// speed
if (air == true){
	
	move *= .15;
	step = (move * walksp);
	
	if(hsp < 4 and hsp > 0){
		hsp += step;
	} else if (hsp > -4 and hsp <= 0){
		hsp += step
	}
	
	if(hsp > 3 and step < 0){
		hsp += step;
	} else if(hsp < -3 and step > 0){
		hsp += step;
	}
	
	
	
} else {
	step = move * walksp;
	hsp = step;
}


	






if hsp > 4 and air == false{
	hsp = 4
} else if hsp < -4 and air == false{
	hsp = -4;
}





if(key_jump and vsp == 0 and (!place_meeting(x, y - 1, objectWall))){
	vsp -= 6;
	audio_play_sound(soundJump, 10, false);
	air = false;
	show_debug_message("JUMPED");
}

vsp += grv;



if(win) game_restart();

debugstring = "Air: " + string(air) + " HSP: " + string(hsp) + " X,Y: " + string(x) + "," + string(y);

show_debug_message(debugstring);


