#0 1 2 3
#0 12 14 16
###Шанс:
#luck * 20 + 100
scoreboard players set #20 variables 20
execute store result score *var1 variables run attribute @s minecraft:luck get
scoreboard players operation *var1 variables *= #20 variables
scoreboard players add *var1 variables 100
#100, 120, 140, 160

scoreboard players set #60 variables 60
scoreboard players set #100 variables 100
scoreboard players operation *var1 variables *= #60 variables
scoreboard players operation *var1 variables /= #100 variables

#Шанс
execute store result score *var2 variables run random value 1..100 dsb:spawn_graves

#Если выпавший шанс больше текущего, значит не повезло
execute if score *var2 variables > *var1 variables run return fail


execute summon marker run function entities:player/void/find_place
return 1