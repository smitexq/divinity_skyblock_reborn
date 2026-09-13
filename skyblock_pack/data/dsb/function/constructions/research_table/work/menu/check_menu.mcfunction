#по умолчанию инлекс на 0
execute unless entity @p[distance=..6] run scoreboard players set @s r.tableIndex 0

#Выполняем основную логику, если рядом есть игрок
execute if entity @p[distance=..6] run function dsb:constructions/research_table/work/if_player_near


##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:120, command:"function dsb:constructions/research_table/work/menu/check_menu", requirePos:true, requireEntity:true}

execute unless entity @p[distance=..7] run return run function dc:get_call {tick:50, command:"function dsb:constructions/research_table/work/menu/check_menu", requirePos:true, requireEntity:true}

function dc:get_call {tick:1, command:"function dsb:constructions/research_table/work/menu/check_menu", requirePos:true, requireEntity:true}