#Если постройка была сломана
execute unless predicate dsb:constructions/nether_converter/any_init run return run function dsb:constructions/nether_converter/remove


##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:200, command:"function dsb:constructions/nether_converter/on_pos", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..9] run return run function dc:get_call {tick:120, command:"function dsb:constructions/nether_converter/on_pos", requirePos:false, requireEntity:true}

function dc:get_call {tick:30, command:"function dsb:constructions/nether_converter/on_pos", requirePos:false, requireEntity:true}