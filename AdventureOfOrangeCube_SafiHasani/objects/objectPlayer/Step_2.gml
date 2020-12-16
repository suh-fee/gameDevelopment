/// @description Insert description here
// You can write your code in this editor






if(place_meeting(x+hsp,y,objectWall)) {
	while(!place_meeting(x+sign(hsp), y, objectWall)){
		x += (sign(hsp));
	}
	hsp = 0;
}

if(place_meeting(x,y + vsp,objectWall)) {
	while(!place_meeting(x, y + sign(vsp), objectWall)){
		y += (sign(vsp));
	}
	vsp = 0;
	if (air == true and place_meeting(x, y+1, objectWall)){
		air = false;
	}
	
}


y += vsp;
x += hsp;

if air == false{
	hsp = 0;
}




