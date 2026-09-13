tag @s remove WearingTravelerRing
playsound minecraft:entity.breeze.wind_burst ambient @s ~ ~ ~ 0.8 1.5

#Если надето кольцо старше, то ничего не делаем
execute if score @s TravelLevel matches 3 run return 0
#Если есть кольцо странника (меньше)
execute if entity @s[tag=WearingWandererRing] run return run scoreboard players set @s TravelLevel 1


scoreboard players set @s TravelLevel 0
tag @s remove RingsOfTravel