// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function cloudScripts(cloud){
	audio_play_sound(cloudSound, 1, -1)
	if cloud.size == 1{
		instance_create_layer(cloud.x,cloud.y, layer, poofObj)
	} else if cloud.size == 2 {
		instance_create_layer(cloud.x - 8,cloud.y, layer, poofObj)
		instance_create_layer(cloud.x + 8,cloud.y, layer, poofObj)
		
	} else if cloud.size == 3 {
		instance_create_layer(cloud.x,cloud.y, layer, poofObj)
		instance_create_layer(cloud.x - 16,cloud.y, layer, poofObj)
		instance_create_layer(cloud.x + 16,cloud.y, layer, poofObj)
		
	} else {
		instance_create_layer(cloud.x - 8,cloud.y, layer, poofObj)
		instance_create_layer(cloud.x + 8,cloud.y, layer, poofObj)
		instance_create_layer(cloud.x - 24,cloud.y, layer, poofObj)
		instance_create_layer(cloud.x + 24,cloud.y, layer, poofObj)
		
	}
	instance_destroy(cloud)

}