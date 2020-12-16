/// @description Insert description here
// You can write your code in this editor


if not global.start{
	
	if keyboard_check_pressed(ord("A")){
		if global.p1choice >= 1{
			global.p1choice -= 1;
		} else {
			global.p1choice = 6
		}
	}
	
	else if keyboard_check_pressed(ord("D")){
		if global.p1choice <= 5{
			global.p1choice += 1;
		} else {
			global.p1choice = 0
		}
	}
	
	if keyboard_check_pressed(ord("J")){
		if global.p2choice >= 1{
			global.p2choice -= 1;
		} else {
			global.p2choice = 6
		}
	}
	
	else if keyboard_check_pressed(ord("L")){
		if global.p2choice <= 5{
			global.p2choice += 1;
		} else {
			global.p2choice = 0
		}
	}
	
	if keyboard_check_pressed(vk_enter){
		global.start = true;
	}
	
	if global.start{
		global.p1index = sprites[global.p1choice]
		global.p2index = sprites[global.p2choice]
		room_goto_next()
	}
	
}