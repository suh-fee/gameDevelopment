/// @description Insert description here
// You can write your code in this editor

audio_play_sound(soundDeath, 10, false);

while(audio_is_playing(soundDeath)){
	
}

if objectPlayer.check == true{
	objectPlayer.x = other.checkx;
	objectPlayer.y = other.checky;
	other.hsp = 0;
	other.vsp = 0;
} else {
	room_restart();
}

