tag @s remove WearingWandererRing
playsound minecraft:entity.breeze.wind_burst ambient @s ~ ~ ~ 0.8 1.5

execute if score @s TravelLevel matches 2.. run return 0
scoreboard players set @s TravelLevel 0
tag @s remove RingsOfTravel