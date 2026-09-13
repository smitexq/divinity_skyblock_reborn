scoreboard players add @s RecursionDepth 1
#Призыв молнии на подходящей позиции
execute unless block ~ ~ ~ #entities:charged_ray run return run summon minecraft:lightning_bolt

#Ищем позицию, если дальше 50 блоков, то заканчиваем
execute if score @s RecursionDepth matches ..100 positioned ^ ^ ^0.5 run return run function dsb:events/lighting_charge/loop
summon minecraft:lightning_bolt