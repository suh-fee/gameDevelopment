/// @description p1 spawn
// You can write your code in this editor

var posx = random_range(0, room_width)

audio_play_sound(spawnSound, 1, -1)
instance_create_layer(room_width/3,room_height - 30,layer,pOneObj)
