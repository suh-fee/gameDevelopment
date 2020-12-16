/// @description Insert description here





camera_height = camera_get_view_width(view_camera[0])
if room != Room2{
	draw_set_halign(fa_left)
	draw_text_transformed_colour(10, 10, string(global.p1score), 3, 3, 0, c_red, c_red, c_maroon, c_maroon, 1)
	draw_set_halign(fa_right)
	draw_text_transformed_colour(camera_height*2 - 10, 10, string(global.p2score), 3, 3, 0, c_red, c_red, c_maroon, c_maroon, 1)
} else {
	if global.p1score == 5{
		draw_set_halign(fa_center)
		draw_text(room_width, camera_height/2 + 20, "Player 1 Wins! R to Restart")
		draw_sprite_ext(sprites[global.p1choice], 0, room_width, camera_height/2 -25, 3, 3, 0, c_white, 1)
		
	} else {
		draw_set_halign(fa_center)
		draw_text(room_width, camera_height/2 + 20, "Player 2 Wins! R to Restart")
		draw_sprite_ext(sprites[global.p2choice], 0, room_width, camera_height/2 - 25, 3, 3, 0, c_white, 1)
	}
}