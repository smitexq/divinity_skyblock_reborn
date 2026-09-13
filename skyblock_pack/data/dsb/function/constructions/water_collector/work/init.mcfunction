#Если ведро убрали, то заканчиваем работу
execute unless items block ~ ~ ~ container.13 minecraft:bucket run return run function dsb:constructions/water_collector/work/remove

tag @s add start

###Текстура предмета и работа водосборника
execute if predicate dsb:constructions/water_collector/work run function dsb:constructions/water_collector/work/texture
###

execute if score @s WaterCollector matches 60.. run return run function dsb:constructions/water_collector/work/fill_bucket

#Цикл
function dc:get_call {tick:20, command:"function dsb:constructions/water_collector/work/init", requirePos:false, requireEntity:true}