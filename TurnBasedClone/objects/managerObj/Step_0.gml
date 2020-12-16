/// @description Insert description here
// You can write your code in this editor

// updated on each frame, REALLY not efficient but adding the win-screen was kind of a late addition
scoreOne = global.playerScore
scoreTwo = global.otherScore
limit = 20 // score limit

if scoreOne == limit or scoreTwo == limit{
	// moves to the end screen, takes a screenshot of the current room so it can show it behind the win graphics
	if room == Room1{ // staggered for readability
		screenshot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
		room_goto_next()   
	}
}

if keyboard_check_pressed(ord("R")){
	game_restart()
}