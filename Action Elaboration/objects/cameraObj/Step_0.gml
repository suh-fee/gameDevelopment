/// @description Insert description here
// You can write your code in this editor

if instance_exists(pOneObj){
	p1y = instance_nearest(x,y, pOneObj).y
 
}

if instance_exists(pTwoObj){
	p2y = instance_nearest(x,y,pTwoObj).y
}


temp = lerp(p1y, p2y, .5)

if temp >= room_height - 168/2{
	temp = room_height - 168/2
}
if room == Room1{
	camera_set_view_pos(view_camera[0], 0, temp - 168/2)
} else {
	show_debug_message("Here")
	camera_set_view_pos(view_camera[0], 0, 0)
}
