#Если постройка была сломана
execute unless predicate dsb:constructions/composter/static run return run function dsb:constructions/composter/remove


##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:150, command:"function dsb:constructions/composter/on_pos", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..9] run return run function dc:get_call {tick:80, command:"function dsb:constructions/composter/on_pos", requirePos:false, requireEntity:true}

function dc:get_call {tick:20, command:"function dsb:constructions/composter/on_pos", requirePos:false, requireEntity:true}