/// @description Insert description here
// You can write your code in this editor


var cards_in_hand = ds_list_size(global.hand)
var cards_in_other = ds_list_size(global.otherhand)

for(i=0; i < cards_in_hand; i++){
	var card = ds_list_find_value(global.hand, i)
	if card == global.choice{ //finds the card to 'take out' 
		//show_debug_message("Found it!")
		card.faceUp = false;
		ds_list_replace(global.hand, i, noone)// 'takes out' card and adds it to the used deck
		ds_list_add(global.deckused, card)
	}

}
	  

for(i=0; i < cards_in_other; i++){
	var card = ds_list_find_value(global.otherhand, i)
	if card == global.otherselected{
		//show_debug_message("Found it again!")
		ds_list_replace(global.otherhand, i, noone)
		card.faceUp = false;
		ds_list_add(global.deckused, card)
	}
}

spacing = 5
for(i = 0; i < ds_list_size(global.deckused); i++){ // set up used deck visuals
	card = ds_list_find_value(global.deckused, i)
	card.tarX = room_width-x
	card.tarY = y + spacing*i
	card.faceUp = false
	card.depth = i
	card.choseable = false
	
}


	  
if ds_list_size(global.deckused) >= 48{ //only done when the cards HAVE to be reshuffled, very rare.
	
	ds_list_shuffle(global.deck) // reshuffle the deck
 
	spacing = 5
	for(i = 0; i < ds_list_size(global.deck); i++){ // set up deck visuals
		card = ds_list_find_value(global.deck, i)
		card.tarX = x
		card.tarY = y + spacing*i
		card.depth = i
		card.faceUp = false
		card.choseable = false;
	}
	
	ds_list_clear(global.deckused) // clears variables
	ds_list_clear(global.hand)
	ds_list_clear(global.otherhand)
	start=true
	temp=0
}


global.state = state.setup
wait = true 

global.high = not global.high // flips checking for a high or low card