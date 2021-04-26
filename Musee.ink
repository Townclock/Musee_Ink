
INCLUDE foyer
INCLUDE moreau
INCLUDE rousseau
INCLUDE moreauPaintings
INCLUDE functions
INCLUDE rousseauPaintings
INCLUDE inventory
INCLUDE beastInserts
INCLUDE debug
INCLUDE travel
INCLUDE cafeteria
INCLUDE Loki
INCLUDE naming
INCLUDE WintryLady
INCLUDE snakeCharmer1
INCLUDE snakeCharmer2












//Minutes since 1PM
VAR time = 0

// Headspace
LIST hunger = satisfied, peckish, famished
~hunger = satisfied

LIST dream = grounded, uncanny, delirious
~dream = grounded
LIST fear = confident, unsettled, dread, terrified
~fear = unsettled

// Beasts
VAR creeping = 0
VAR devouring = 0
VAR flying = 0

// Specific Themes
LIST possibleThemes = mystery, death, riddles, fables, chimera, eve, creation, temptation, paradise, ridingBeasts, treeSnake, flight, prey, safety
VAR themes = (mystery)

// Locations
LIST locations = outside, foyer, rousseau, moreau, cafeteria
VAR locationsAvailable = (foyer)
VAR currentLocation = outside
VAR returnLocation = -> foyer_stories

// State Machines and vars for "quest" progress


+Play
-> museum_stories
+Debug
-> debug
- 
-> END
 
 
 
// Same story world as Storylet_Example_In_Ink just done directly in Ink
=== museum_stories ===
//The Musée d"Orsay. They say there's no place like it. 
The sun shines brightly upon the noisy city street. For the past week you've been exploring galleries all across Paris, taking in the sights and smells of the city, and generally having a good time. 

You'd recieved an email informing you that you've won a contest and have a reservation to visit this particular gallery today. The event seems small, but oftentimes that's for the best. 

<- travel_actions

->DONE





