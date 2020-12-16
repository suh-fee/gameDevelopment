/// @description Insert description here
// You can write your code in this editor


if room = Room0{
	draw_text(x,y,"Social Distancing Simulator 202X \nPress space to start");
} else {
	if global.key{
		draw_text(x,y,"You won! :)\nPress space to restart");
	} else {
		draw_text(x,y,"You died :/\nPress space to restart");
	}
}