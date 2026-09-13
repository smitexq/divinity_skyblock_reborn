#Относительно предмета, который выкинули (булыжник, блок травы, песок душ)
execute positioned ~ ~0.5 ~ as @e[type=item, scores={existDropItem=1}, tag=!exchange, distance=..0.6] at @s run data modify storage gu:main out set from entity @s Tags[0]
execute positioned ~ ~0.5 ~ as @e[type=item, scores={existDropItem=1}, tag=!exchange, distance=..0.6] at @s run function dsb:constructions/nether_converter/on_item with storage gu:main



##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:200, command:"function dsb:constructions/nether_converter/check_items", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..9] run return run function dc:get_call {tick:60, command:"function dsb:constructions/nether_converter/check_items", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..4] run return run function dc:get_call {tick:20, command:"function dsb:constructions/nether_converter/check_items", requirePos:false, requireEntity:true}

function dc:get_call {tick:2, command:"function dsb:constructions/nether_converter/check_items", requirePos:false, requireEntity:true}