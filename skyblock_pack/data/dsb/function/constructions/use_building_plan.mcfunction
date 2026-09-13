#Использовался молот или план постройки
tag @s[advancements={dsb:interactions/use_building_hammer = true}] add buildngHammer
tag @s[advancements={dsb:interactions/use_building_plan = true}] add buildngPlan

advancement revoke @s only dsb:interactions/use_building_plan
advancement revoke @s only dsb:interactions/use_building_hammer

#Общий тег, чтобы пометить игрока
tag @s add this

function dc:get_call {tick:1, command:"tag @s remove this", requirePos:false, requireEntity:true}
function dc:get_call {tick:1, command:"tag @s remove buildngHammer", requirePos:false, requireEntity:true}
function dc:get_call {tick:1, command:"tag @s remove buildngPlan", requirePos:false, requireEntity:true}

#Ищем с одной из сторон выполняется ли предикат постройки, если да, то относительно этого места проверяем какая конкретно постройка
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~ ~ ~ if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~ ~-1 ~ if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~1 ~ ~ if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~-1 ~ ~ if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~ ~1 ~ if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~ ~ ~1 if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~ ~ ~-1 if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions
execute as @e[type=marker,tag=structure_spawn_pos] at @s positioned ~ ~-2 ~ if predicate dsb:constructions/any run return run function dsb:constructions/search_constructions

#Иначе возвращаем предмет (убивая маркер)
function dsb:constructions/return_items