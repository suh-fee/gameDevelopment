/// @description Insert description here
// You can write your code in this editor

if delete_timer >= 0{
	delete_timer -= 1
}

if delete_timer == 0{
	instance_destroy()
}