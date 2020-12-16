// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerDeath(object){
	audio_play_sound(bonkSound, 1, -1)
	if object_get_name(object) == "pOneObj"{
		instance_create_layer(object.x, object.y - 10, layer, pOneDeadObj)
		instance_create_layer(object.x, object.y - 10, layer, bonkObj)
	} else {
		instance_create_layer(object.x, object.y - 10, layer, pTwoDeadObj)
		instance_create_layer(object.x, object.y - 10, layer, bonkObj)
	}
	instance_destroy(object)
}