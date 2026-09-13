###Проверка на соблюдение условий работы
execute unless predicate dsb:constructions/composter/work run return run function dsb:constructions/composter/work/grow/stop
###

#Частицы
execute if entity @s[tag=!GrowProces] run function dc:get_call {tick:10, command:"function dsb:constructions/composter/work/grow/particle", requirePos:false, requireEntity:true}
#Визуал земли
execute if entity @s[tag=!GrowProces] align xyz run summon block_display ~0.1 ~ ~0.1 {Tags:["composterBlock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.6f,0.8f]},block_state:{Name:"minecraft:dirt"}}
#Обозначаем начало обработки земли
tag @s add GrowProces

#Очки для создания земли
scoreboard players add @s Composter 1

#
execute as @e[type=block_display,tag=composterBlock, distance=..1.5] at @s run tp @s ~ ~0.1 ~
execute if score @s Composter matches ..5 run playsound minecraft:block.gravel.break ambient @a[distance=..8] ~ ~ ~ 2

#Добавляем землю в результат
execute if score @s Composter matches 6 run function dc:gu/generate
execute if score @s Composter matches 6 run return run function dsb:constructions/composter/work/grow/append_dirt with storage gu:main

#Цикл
function dc:get_call {tick:120, command:"function dsb:constructions/composter/work/grow/init", requirePos:false, requireEntity:true}