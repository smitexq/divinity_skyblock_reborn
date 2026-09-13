#Выбираем количество призываемых мобов
execute store result score *var1 variables run random value 2..6
#Создаем метки, относительно которых призовем мобов
function entities:mobs/abilities/military/summon_marker

#Распределяем эти метки случайным образом вокруг
# spreadplayers ~ ~ 4 6 false @e[type=marker,tag=military,distance=..1]
###Распределение с учетом высоты
function entities:mobs/abilities/api/spreadplayers/store_height
data modify storage dsb:temp spreadplayers.range set value "4 6"
data modify storage dsb:temp spreadplayers.target set value "@e[type=marker,tag=military,distance=..1]"
function entities:mobs/abilities/api/spreadplayers/under_height with storage dsb:temp spreadplayers
###

#Частицы и звук призыва
execute as @e[type=marker,tag=military] at @s run particle minecraft:spit ~ ~0.3 ~ 0.1 0.5 0.1 0.01 4 force
playsound minecraft:entity.evoker.prepare_summon ambient @a ~ ~1 ~ 2

#Относительно каждой метки призываем частицы в течении 2 секунд
execute as @e[type=marker,tag=military] at @s run function dc:get_call {tick:5, command:"function entities:mobs/abilities/military/particle", requirePos:false, requireEntity:true}