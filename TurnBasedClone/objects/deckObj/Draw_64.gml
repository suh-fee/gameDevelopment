/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center)
draw_set_font(fontOne)
draw_text(room_width - 50, 50, global.otherScore)
draw_text(50, 50, global.playerScore)

if global.high{ // flips between picking a high card and picking a low card
	
	draw_text(room_width / 2, 50, "Pick a high card!")
} else {
	draw_text(room_width / 2, 50, "Pick a low card!")
}