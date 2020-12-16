/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x+hsp,y,wallObject)) {
	while(!place_meeting(x+sign(hsp), y, wallObject)){
		x += (sign(hsp));
	}
	hsp = 0;

}

if(place_meeting(x,y + vsp,wallObject)) {
	while(!place_meeting(x, y + sign(vsp), wallObject)){
		y += (sign(vsp));
	}
	vsp = 0;

}

if global.key == false{
if(place_meeting(x+hsp,y,doorObject)) {
	while(!place_meeting(x+sign(hsp), y, doorObject)){
		x += (sign(hsp));
	}
	hsp = 0;
	}

if(place_meeting(x,y + vsp,doorObject)) {
	while(!place_meeting(x, y + sign(vsp), doorObject)){
		y += (sign(vsp));
	}
	vsp = 0;
	}
} else {
	if(place_meeting(x,y, doorObject)){
		instance_destroy(doorObject)
		audio_play_sound(doorSound, 1 , 0)
	}
}

if(place_meeting(x+hsp,y,doorObject)) {
	while(!place_meeting(x+sign(hsp), y, doorObject)){
		x += (sign(hsp));
	}
	hsp = 0;
	}

y += vsp;
x += hsp;


// check distance, update HP

cough = instance_nearest(x,y,npc1Object)

if distance_to_object(cough) <= 90{
	damage = true
	rateOfDecay = (90 - distance_to_object(cough)) / 90;
	maskDamage += rateOfDecay;

} else {
	damage = false
}

if maskDamage > 20{
	global.hp -= 1
	maskDamage = 0
	if global.hp <= 0{
		audio_play_sound(doorSound, 1, 0)
		room_goto(Room01)
	}
}

