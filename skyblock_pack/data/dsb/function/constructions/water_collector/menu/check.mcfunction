#Выполняем основную логику, если рядом есть игрок
execute if entity @p[distance=..7] run function dsb:constructions/water_collector/menu/if_player_near

#Если есть ведро, то начать собирать воду
execute if entity @s[tag=!start] if items block ~ ~ ~ container.13 minecraft:bucket if predicate dsb:constructions/water_collector/work run function dsb:constructions/water_collector/work/init

##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:200, command:"function dsb:constructions/water_collector/menu/check", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..7] run return run function dc:get_call {tick:80, command:"function dsb:constructions/water_collector/menu/check", requirePos:false, requireEntity:true}

function dc:get_call {tick:10, command:"function dsb:constructions/water_collector/menu/check", requirePos:false, requireEntity:true}