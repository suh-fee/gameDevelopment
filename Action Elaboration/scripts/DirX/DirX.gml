// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DirX(key1, key2){
	if keyboard_check(ord(key1)){
		return -1
	} else if keyboard_check(ord(key2)){
		return 1
	} else { return 0 }
}

