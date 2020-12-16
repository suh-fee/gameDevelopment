/// @description Insert description here
// You can write your code in this editor

 bounce = false
_accX = .5

_velX += DirX(_keyLeft, _keyRight) * _accX
_velY += _gravity

//horizontal bounds

if x - sprite_width < 0{
	x = sprite_width
	_velX *= -1 * _restitution
}
if x  > room_width{
	x = room_width - sprite_width
	if _velX > 0{
		_velX *=  _restitution * -1
	} else {
		_velX *= _restitution
	}
}


//vertical bounds


if _bottomCollision && y + sprite_height / 2 > room_height{
	decScore(object_get_name(object_index))
	audio_play_sound(bonkSound, 1, -1)
	instance_destroy(object_index)
}


newx = x +_velX
newy = y +_velY

//vertical collision w/ cloud


if _velY > 0{
	if place_meeting(newx, newy, staticParObj) {
		instance = instance_nearest(newx, newy, staticParObj)
		
		_velY = _minSpeed * -1
		
		newy = y + _velY
		bounce = true
		cloudScripts(instance)
		
	}
}



//vertical collision w/ other player
if _velY >= 0 and place_meeting(newx,newy, plyParObj){
	

	_velY = -1 * _minSpeed

	newy = y + _velY
	bounce = true
	incScore(object_get_name(object_index))
	playerDeath(instance_nearest(x, y+50, plyParObj))

	
}

if _velX < -6{
	_velX = -6
} else if _velX > 6{
	_velX = 6
}

if _velX < 0{
	image_xscale = 1
} else {
	image_xscale = -1
}

if _velY > 1{
	image_index = 1
} else if _velY < -1{
	image_index = 2
} else {
	image_index = 0
}



x = newx
y = newy