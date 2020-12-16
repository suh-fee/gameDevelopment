/// @description Insert description here
// You can write your code in this editor


move_towards_point(array[curr,0], array[curr,1], spd);

if distance_to_point(array[curr,0],array[curr,1]) < 10{
	curr += 1;
}

if curr >= 3{
	curr = 0;
}

