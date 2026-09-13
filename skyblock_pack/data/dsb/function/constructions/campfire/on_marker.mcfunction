#пометка для достижения
tag @s add campfire

execute unless block ~ ~ ~ campfire run return run kill @s

execute if block ~ ~ ~ minecraft:campfire[lit=true] as @a[tag=!CampfireRegeneration, distance=..7] run function dsb:constructions/campfire/regen



##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:200, command:"function dsb:constructions/campfire/on_marker", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..8] run return run function dc:get_call {tick:80, command:"function dsb:constructions/campfire/on_marker", requirePos:false, requireEntity:true}

function dc:get_call {tick:20, command:"function dsb:constructions/campfire/on_marker", requirePos:false, requireEntity:true}