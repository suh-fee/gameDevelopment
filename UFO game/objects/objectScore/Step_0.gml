/// @description Insert description here
// You can write your code in this editor


cooldown += 1;

if(instance_number(objectEnemy) == 0 and counter == 0){
	roundNum += 1;
	if cooldownMax >= 10{
		cooldownMax -= 5;
	}
	counter = roundNum * 3;
	if roundNum % 5 == 0{
		objectPlayer.hp += 1;
		objectPlayer.bombs += 1;
	}
	
} 

if counter != 0{
	if cooldown >= cooldownMax{
		instance_create_depth(x + random_range(-100, 100), y + random_range(-100, 100), 0, objectEnemy);
		counter -= 1;
		cooldown = 0;
	}
} 
	
	


