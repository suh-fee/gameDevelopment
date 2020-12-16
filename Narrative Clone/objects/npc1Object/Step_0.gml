/// @description Insert description here
// You can write your code in this editor

if distance_to_object(citrusObject) < 5{
	close = true;
} else {
	close = false;
}


if close = true and keyboard_check_pressed(vk_space){
	show = true;
	audio_play_sound(talkSound, 0,  0)
} 

if close = false{
	show = close;
}



