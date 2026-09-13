#Если постройка была сломана
execute unless predicate dsb:constructions/sieve/static run return run function dsb:constructions/sieve/remove

#Проверка какой блок
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:gravel run return run function dsb:constructions/sieve/work/place_block {block: "gravel"}
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:dirt run return run function dsb:constructions/sieve/work/place_block {block: "dirt"}
execute if dimension minecraft:the_nether positioned ~ ~1 ~ if block ~ ~ ~ minecraft:soul_sand run return run function dsb:constructions/sieve/work/place_block {block: "soul_sand"}

##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:120, command:"function dsb:constructions/sieve/on_pos", requirePos:true, requireEntity:false}

execute unless entity @p[distance=..9] run return run function dc:get_call {tick:60, command:"function dsb:constructions/sieve/on_pos", requirePos:true, requireEntity:false}

function dc:get_call {tick:20, command:"function dsb:constructions/sieve/on_pos", requirePos:true, requireEntity:false}