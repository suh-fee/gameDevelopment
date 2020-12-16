/// @description Insert description here
// You can write your code in this editor


draw_set_font(fontOne)


if room != Room1{
	draw_sprite_ext(screenshot,0,0,0,1,1,0,c_white,1);
	if scoreOne > scoreTwo{
		draw_sprite(smileSprite, 1, room_width/2, room_height/2)
		draw_text_color(room_width/2, 3 * room_height/4, "You win! Congrats!", c_red, c_green, c_blue, c_yellow, 1)
	} else {
		draw_sprite(sadSprite, 1, room_width/2, room_height/2)
		draw_text_color(room_width/2, 3 * room_height/4, "You lose! Better luck next time!", c_red, c_green, c_blue, c_yellow, 1)
	}
	
	draw_text(room_width/2, room_height - 30, "Press R to reset the game.")
   
}