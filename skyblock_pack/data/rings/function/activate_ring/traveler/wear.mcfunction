tag @s add WearingTravelerRing
tag @s add RingsOfTravel
execute if score @s TravelLevel matches 2.. run return 0

playsound minecraft:entity.cat.ambient ambient @s

scoreboard players set @s TravelLevel 2
particle minecraft:entity_effect{color:[0.14f,0.93f,0.12f,1f]} ~ ~1 ~ 0.4 0.5 0.4 1 10