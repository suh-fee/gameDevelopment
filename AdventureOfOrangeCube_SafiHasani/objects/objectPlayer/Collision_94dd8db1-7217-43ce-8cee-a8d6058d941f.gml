/// @description Insert description here
// You can write your code in this editor

if vsp >= 0 and self.y <= other.y - 15{
	vsp *= -1;
	audio_play_sound(soundBounce, 10, false);
	air = true;
}