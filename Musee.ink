
INCLUDE foyer
INCLUDE moreau
INCLUDE rousseau
INCLUDE cafateria
INCLUDE functions

// Headspace
LIST hunger = notHungry, hungry, famished
~hunger = notHungry
LIST dream = grounded, uncanny, delirious
~dream = grounded
LIST fear = confident, unsettled, dreading, terrified
~fear = unsettled

// Beasts
VAR creeping = 0
VAR devouring = 0
VAR flying = 0

// Specific Thems
VAR eve = false
VAR chimera = false
VAR fables = false
VAR riddles = false
VAR death = false

// NPC Progress
LIST manWithCane = notMet, hasSharedRiddle, exposed
~manWithCane = notMet

// Locations
LIST locations = outside, foyer, rousseau, moreau, cafateria
VAR locationsAvailable = (foyer)
VAR currentLocation = outside


-> museum_stories

// Travel menu
=== travel_actions() ===
Current Location: {currentLocation}

+ {CanTravel(foyer)} [Enter the Foyer]
  People are excited that the museum has reopened...
  ~currentLocation = foyer
  -> foyer_stories
+ {CanTravel(moreau)} [Gustave Moreau Collection]
  Ah, the Grand Salon, with its cathedral-like ceilings and sculptures is an inspiring, quiet and contemplative space.
  ~currentLocation = moreau
  ->moreau_stories
+ {CanTravel(rousseau)} [Henri Rousseau Collection]
  Gallery One is a favourite. The post-impressionist Rousseau's "La Charmeuse de Serpents" dominates the room. Toulouse-Lautrec's Moulin Rouge works occupy and brighten the far corner. A small crowd gathers to ponder the black Eve in her garden of Eden.
  ~currentLocation = rousseau
  -> serpent_charmer_stories
 
// Same story world as Storylet_Example_In_Ink just done directly in Ink
=== museum_stories ===
The Musée d"Orsay. They say there's no place like it. 
<- travel_actions()
->DONE





