/// @description Insert description here
// You can write your code in this editor

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_set_font(fontScore);
draw_set_color(c_white);
draw_text(cx + cw/2, cy+25, "Score: " + string(playerScore));
draw_text(cx + cw/2, cy+50, "Round: " + string(roundNum));
draw_text(cx + cw/2, cy+75, "Bombs: " + string(objectPlayer.bombs));
draw_text(cx + cw/2, cy+100, "HP: " + string(objectPlayer.hp));



