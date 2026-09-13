#Отвечает за количество сердец, которое отхилится
scoreboard players remove @s RecursionDepth 1
#Если закончили лечение, то заканчиваем функцию
execute if score @s RecursionDepth matches 0 run tag @s remove ActiveHealing
execute if score @s RecursionDepth matches 0 run return run scoreboard players reset @s RecursionDepth

#Частицы
particle dust{color:[1f,0f,0f],scale:0.8f} ~ ~1 ~ 0.4 0.5 0.4 0.1 4 force
particle damage_indicator ~ ~1 ~ 0.3 0.4 0.3 0.1 1 force

execute store result score *var1 variables run data get entity @s Health
execute unless score *var1 variables matches ..0 store result entity @s Health float 1 run scoreboard players add *var1 variables 1
#Каждую секунду отхил
function dc:get_call {tick:20, command:"function entities:mobs/abilities/regeneration/slow_heal", requirePos:false, requireEntity:true}