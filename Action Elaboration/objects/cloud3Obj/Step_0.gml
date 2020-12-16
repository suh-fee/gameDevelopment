/// @description Insert description here
// You can write your code in this editor

ttl += 1

if ttl == maxTTL{
	swap = true
}

if swap and step != 1{
	image_index += 1
	swap = false
	ttl = 0
	step += 1
} else if swap and step == 1{
	instance_create_layer(x,y, layer,cloud4Obj)
	instance_destroy()
}

