/// @description Insert description here
// You can write your code in this editor

var cards_in_hand = ds_list_size(global.hand)
var cards_in_other = ds_list_size(global.otherhand)

switch(global.state) {


	case state.setup:
	if (start){ // will only be ran once, used to set up the initial deck in the game
		// can also run again if deck is ranthrough, highly unlikely
		
	    if (cards_in_hand < 3) {
			
			var card = ds_list_find_value(global.deck, temp)

			ds_list_add(global.hand, card)
			card.tarX = room_width / 2 - 100 + (cards_in_hand * 100)
			card.tarY = 4 * room_height / 5
			card.faceUp = true
			card.choseable = true
			temp++
			
	    } else if(cards_in_other < 3){
			var card = ds_list_find_value(global.deck, temp)
			ds_list_add(global.otherhand, card)
			card.tarX = room_width / 2 - 100 + ((cards_in_other) * 100 )
			card.tarY = room_height / 5
			temp++
		} else {
			start = false
			audio_play_sound(cardSound, 1, 0)
			global.state = state.play
		}
	} else { // used in all other cases, only replaces the used card
		// could've probably been done more easily, but tried to make it readable

		replaceOne = ds_list_find_index(global.hand, noone) // index to replace in hand
		valueOne = ds_list_find_value(global.deck, temp) // value to replace it with
		temp++ 
		replaceTwo = ds_list_find_index(global.otherhand, noone) //index to replace in other
		valueTwo = ds_list_find_value(global.deck, temp) // value to replace it with
		temp++
	
		ds_list_set(global.hand, replaceOne, valueOne) // replaces the used values
		ds_list_set(global.otherhand, replaceTwo, valueTwo)
		
		
		//show_debug_message("Replacing theses indexes:" + string(replaceOne) + string(replaceTwo))
		
		cardOne = ds_list_find_value(global.hand, replaceOne) // finds the cards that were replaced
		cardTwo = ds_list_find_value(global.otherhand, replaceTwo)
	
		cardOne.tarX = room_width / 2 - 100 + (replaceOne * 100) //puts the cards in the right places
		cardOne.tarY = 4 * room_height / 5
		cardOne.faceUp = true
		cardOne.choseable = true
	
		cardTwo.tarX = room_width / 2 - 100 + (replaceTwo * 100)
		cardTwo.tarY = room_height / 5
		audio_play_sound(cardSound, 1, 0)
		global.state = state.play

	}
		

	    break;

	case state.play:

	// player clicks on cards, selects cards, make reactions to that
		if (global.selected != noone && mouse_check_button_pressed(mb_left)) {
			if (global.selected.choseable){ //makes sure only the player's cards are pickable
				global.selected.tarX = room_width/2
				global.selected.tarY = room_height/2 + 75
				
				
				global.choice = global.selected
				global.state = state.battle
				break
			}
		}
		break;
		
		
	case state.battle: // enemy chooses car

		var choice = round(random_range(0,2)) // enemy picks a random card
		global.otherselected = ds_list_find_value(global.otherhand, choice)
		global.otherselected.tarX = room_width/2
		global.otherselected.tarY = room_height/2 - 75
		global.otherselected.faceUp = true
		
		
		global.state = state.resolve
		audio_play_sound(cardSound, 1, 0)
		
		
		break;
	
	case state.resolve:
	
		 // compares the players card and updates scores appropiately
		var win = 0; //  0 tie, 1 player win, 2 cpu win
	  
		var cardOne = global.choice
		var cardTwo = global.otherselected
		
		if cardOne.num > cardTwo.num{
			if global.high{
				win = 1
			} else {
				win = 2
			}
		} else if cardOne.num < cardTwo.num {
			if global.high{
				win = 2
			} else {
				win = 1
			}
		}
		
		if cardOne.num == 1 and cardTwo.num == 1{
			win = 0
		} else if cardOne.num == 1{ // Ace is an insta-win each time
			win = 1
		} else if cardTwo.num == 1{
			win = 2
		}
		
		if win == 1{
			global.playerScore+= 1
		} else if win == 2 {
			global.otherScore += 1
		}
	  
	  global.state = state.cleanup
	  break;
	  
	case state.cleanup:
		if wait{
			alarm[0] = 70; // does the work in an alarm to allow for players to see the results
			wait = false
		}


	break

 }