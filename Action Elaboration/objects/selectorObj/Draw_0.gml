/// @description Insert description here
// You can write your code in this editor
width = room_width/4

height = room_height/4

if not global.start{
// p1 draw
draw_sprite_ext(sprites[global.p1choice], 0, width, height, 2, 2, 0, c_white, 1)
draw_text(width, 50,strings[global.p1choice])


// p2 draw

draw_sprite_ext(sprites[global.p2choice], 0, 3 * width, height, 2, 2, 0, c_white, 1)
draw_text(width* 3, 50,strings[global.p2choice])


//text draw
draw_set_halign(fa_center)

draw_text(width * 2, 10, "Press enter when ready!")
draw_text(width * 2, 125, " <A D>            <J L>")
}

