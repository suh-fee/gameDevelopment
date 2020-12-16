/// @description Insert description here
// You can write your code in this editor

depth = -y;
draw_sprite(sprite_index, -1, x, y);
 

if show = true{
	draw_sprite(textBoxSprite, -1, x, y-120);
	draw_text(x - 115, y - 175, "Make sure to social \ndistance! Your mask health\nis in top left. You can \nfind new ones around \nif it gets dirty.")

}

if close == false{
	draw_sprite(textBoxSprite, -1, x, y-120);
	
	draw_text(x - 115, y - 175, "Hello, child. Could you \npick up my medication \nsouth by the pharmacy?")
	
}

if global.key{
	draw_sprite(textBoxSprite, -1, x, y-120);
	draw_text(x - 115, y - 175, "Thank you dear! \nHand it to me please.")
}