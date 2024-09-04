/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance of a cave. {not torch_pickup: |There is a torch on the floor.} The cave extends to the east and west. 
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you cant see anything. 
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. It is dark, you cant see anything. Though it smells aromatic.
* {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way. 
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off thouasands of coins in the room.
* [Take as many coins as you can carry] -> take_coins
* [Leave the coins be, keep exploring] -> keep_exploring
-> END

== take_coins ==
Stuffing your pockets and satchel fill of coins makes loud jangly noises. You hear a loud bellow.
-> END

== keep_exploring ==
You walk further into the room. Behind the heap of coins lies a large dragon staring right at you. 
-> END

== west_tunnel_lit ==
The light of your torch causes hundreds of gorgeous flowers to bloom.
* [Pick the flowers] -> pick_flowers
* [Smell the flowers] -> smell_flowers
-> END

== pick_flowers ==
Picking the flowers causes hundreds of venomous insects to climb all over you. 
-> END


== smell_flowers ==
Smelling the flowers wafts poisonous partictles through your nasal passages. 
-> END






