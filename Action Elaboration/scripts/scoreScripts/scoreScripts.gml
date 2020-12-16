// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function incScore(name){

	if name == "pOneObj"{
		global.p1score += 1
	}
	if name == "pTwoObj"{
		global.p2score += 1
	}
	
	if global.p1score >= 5 or global.p2score >= 5{
		room_goto(Room2)
	}
}

function decScore(name){
	show_debug_message("Decremented!" + name)
	if name == "pOneObj"{
		global.p2score += 1
	}
	if name == "pTwoObj"{
		global.p1score += 1
	}
	if global.p1score >= 5 or global.p2score >= 5{
		room_goto(Room2)
	}
}