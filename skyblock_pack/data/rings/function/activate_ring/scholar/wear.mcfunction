tag @s add WearingScholarRing
tag @s add RingsOfTravel
execute if score @s TravelLevel matches 3 run return 0

playsound minecraft:entity.cat.ambient ambient @s

scoreboard players set @s TravelLevel 3
particle minecraft:entity_effect{color:[0.098f,0.952f,0.964f,1f]} ~ ~1 ~ 0.4 0.5 0.4 1 10