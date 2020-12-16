/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontTwo)

if faceUp // dictates sprite to draw and color of text
	switch card_type
	{

		case face_index.clubs:
		suitSpr = clubsSpr
		color = c_black
		break
		
		case face_index.spades:
		suitSpr = spadesSpr
		color = c_black
		break
		
		case face_index.hearts:
		suitSpr = heartsSpr
		color = c_red
		break
		
		case face_index.diamonds:
		suitSpr = diamondSpr
		color = c_red
		break


	}



if faceUp{
	sprite_index = paperSpr
} else {
	sprite_index = backSpr
}



text = string(num) // initializes it 
if num == 1{ // reassigns to the given card value's letter representation
	text = "A"
} else if num == 11{
	text = "J"
} else if num == 12{
	text = "Q"
} else if num == 13{
	text = "K"
}

draw_sprite(sprite_index, image_index, x, y)
if(faceUp){ //draws sprite seperately from text and card
	draw_text_color(x-24,y-60,text, color, color, color, color, 1)
	draw_sprite(suitSpr, 1, x, y)
}
