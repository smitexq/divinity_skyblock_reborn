#Если постройка была сломана
execute unless predicate dsb:constructions/lantern/static run return run function dsb:constructions/lantern_of_peace/remove

#Улучшение
execute if block ~ ~-2 ~ minecraft:amethyst_block run tag @s add upgrade
execute unless block ~ ~-2 ~ minecraft:amethyst_block run tag @s remove upgrade

##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:200, command:"function dsb:constructions/lantern_of_peace/on_pos", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..9] run return run function dc:get_call {tick:80, command:"function dsb:constructions/lantern_of_peace/on_pos", requirePos:false, requireEntity:true}

function dc:get_call {tick:20, command:"function dsb:constructions/lantern_of_peace/on_pos", requirePos:false, requireEntity:true}