/// @description Insert description here
// You can write your code in this editor

// move x and y towards target position w/ lerp or move_towards_point
// can also use move_towards_pos



if position_meeting(mouse_x, mouse_y, cardObj){
	global.selected = instance_nearest(mouse_x,mouse_y, cardObj)
	

} else {
	global.selected = noone
	
}

if position_meeting(mouse_x, mouse_y, self){
	chosen = true
} else {
	chosen = false
}

move = 0

if choseable and chosen{
	move = 10
}

x = lerp(tarX, x, 0.75)
y = lerp(tarY-move, y, 0.75)
