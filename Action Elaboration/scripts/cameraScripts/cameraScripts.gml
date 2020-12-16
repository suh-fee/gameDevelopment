// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FollowObject(){
	var cwidth = camera_get_view_width(view_camera[0])
	var cheight = camera_get_view_height(view_camera[0])
	camera_set_view_pos(view_camera[0], x-cwidth/2, y-cheight/2)
	
}