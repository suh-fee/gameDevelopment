/// @description Cloud spawn
// You can write your code in this editor

var posx = random_range(32, room_width - 32)
var posy = random_range(150, room_height - 32)
var nearest = instance_nearest(posx, posy, staticParObj)

while point_distance(posx, posy, nearest.x, nearest.y) < 30{
	posx = random_range(32, room_width - 32)
	posy = random_range(150, room_height - 32)
	nearest = instance_nearest(posx, posy, staticParObj)
}


if(instance_number(staticParObj) < 15){
	instance_create_layer(posx,posy, layer,cloud0Obj)
}

alarm[0] = _spawnTimer