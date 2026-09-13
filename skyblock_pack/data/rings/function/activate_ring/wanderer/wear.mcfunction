tag @s add WearingWandererRing
tag @s add RingsOfTravel
execute if score @s TravelLevel matches 1.. run return 0

playsound minecraft:entity.cat.ambient ambient @s

scoreboard players set @s TravelLevel 1
particle minecraft:entity_effect{color:[0.98f,0.95f,0.1f,1f]} ~ ~1 ~ 0.4 0.5 0.4 1 10