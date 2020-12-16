/// @description Insert description here
// You can write your code in this editor


// control checks

hp = global.hp

if keyboard_check(ord("W")){
	vsp = -3
} else if keyboard_check(ord("S")){
	vsp = 3
} else {
	vsp = 0
}

if keyboard_check(ord("A")){
	hsp = -3
} else if keyboard_check(ord("D")){
	hsp = 3
} else {
	hsp = 0
}

// fix diagonal speed
if abs(hsp) == 5 and abs(vsp) == 5{
	// 2.12 as hsp and vsp makes the overall speed = 3
	vsp = 2.12 * sign(vsp)
	hsp = 2.12 * sign(hsp)
}


// sprite selection
if hsp > 0{
	sprite_curr = playerESprite
	image_xscale = 1
} else if hsp < 0 {
	sprite_curr = playerESprite
	image_xscale = -1
} else if vsp > 0 {
	sprite_curr = playerSoSprite

} else if vsp < 0 {
	sprite_curr = playerNSprite
}

// stop animation
if hsp = 0 and vsp = 0{
	image_index = 0
}

