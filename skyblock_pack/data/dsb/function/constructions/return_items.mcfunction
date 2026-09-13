kill @e[type=marker,tag=structure_spawn_pos]

#Возвращаем план постройки ИЛИ молот (в зависимости от того, что использовали)
execute if entity @s[tag=buildngPlan] run loot give @s loot dsb:items/tools/building_plan
execute if entity @s[tag=buildngHammer] run loot give @s loot dsb:items/tools/building_hammer

return fail