tag @s remove WearingScholarRing
playsound minecraft:entity.breeze.wind_burst ambient @s ~ ~ ~ 0.8 1.5

#Если есть кольцо исследователя (меньше)
execute if entity @s[tag=WearingTravelerRing] run return run scoreboard players set @s TravelLevel 2
#Если есть кольцо странника (меньше)
execute if entity @s[tag=WearingWandererRing] run return run scoreboard players set @s TravelLevel 1


scoreboard players set @s TravelLevel 0
tag @s remove RingsOfTravel