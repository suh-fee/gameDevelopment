/// @description Insert description here
// You can write your code in this editor

draw_sprite(healthSprite, 6-global.hp, 100, 50)
if damage{
	draw_sprite(damageSprite, maskDamage div 4, 170, 50)
}

if global.key {
	draw_sprite(keySprite, -1, 200, 50)
}

