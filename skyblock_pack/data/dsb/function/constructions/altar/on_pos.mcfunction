#Если постройка была сломана
execute align xyz positioned ~0.5 ~-1 ~0.5 unless predicate dsb:constructions/altar/static run return run function dsb:constructions/altar/remove

#частицы
execute if score #work Altar matches 0 if entity @p[distance=..6] at @e[type=minecraft:armor_stand,tag=AltarShelf,distance=2..] align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:soul_fire_flame ~ ~1.4 ~


##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:200, command:"function dsb:constructions/altar/on_pos", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..10] run return run function dc:get_call {tick:80, command:"function dsb:constructions/altar/on_pos", requirePos:false, requireEntity:true}

function dc:get_call {tick:20, command:"function dsb:constructions/altar/on_pos", requirePos:false, requireEntity:true}