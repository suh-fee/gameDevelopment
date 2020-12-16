/// @description Insert description here
// You can write your code in this editor

randomize() // ensures a random seed at the start, comment out for debugging
global.deck = ds_list_create()
global.deckused = ds_list_create()
global.hand = ds_list_create()
global.otherhand = ds_list_create()

global.selected = noone
global.otherselected = noone

global.playerScore = 0;
global.otherScore = 0;


global.choice = noone
global.high = true

temp = 0 // holds the index of the next card to pull out of the deck, not a good name but ¯\_(ツ)_/¯  
wait = true // done to let the alarm run through fully 
start = true // done for initial setup

enum state{
	setup,
	play,
	battle,
	resolve,
	cleanup
}

global.state = state.setup

var card_object = cardObj // name of object in assets

suits[0] = face_index.diamonds // four different suits, used an array for looping
suits[1] = face_index.clubs
suits[2] = face_index.spades
suits[3] = face_index.hearts



for (i = 1; i < 5; i++) { //four suits
	for(j = 1; j < 14; j++){ //thirteen per suit
		var newcard = instance_create_layer(x, y, "Instances", card_object); // adds the card to the deck and board
		newcard.card_type = suits[i-1]
		newcard.faceUp = false;
		newcard.num = j
		ds_list_add(global.deck, newcard);
	}
}

ds_list_shuffle(global.deck) // shuffle the deck initially
 
spacing = 5

for(i = 0; i < ds_list_size(global.deck); i++){ // set up deck visuals (MUCH cleaner than doing it in the first loop)
	card = ds_list_find_value(global.deck, i)
	card.tarX = x
	card.tarY = y + spacing*i
	card.depth = i
}