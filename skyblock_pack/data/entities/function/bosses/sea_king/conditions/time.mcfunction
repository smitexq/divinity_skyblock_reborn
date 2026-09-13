#Если наступил день
execute store result score *var1 variables run time query daytime
execute unless score *var1 variables matches 13000..23000 run return run function entities:bosses/sea_king/conditions/day

#Если игрок вышел за пределы арены (или умер)
scoreboard players set *var1 variables 0
execute at @e[type=marker, tag=DrownedArenaMiddle] as @a if predicate entities:bosses/drowned_king_search_pl run scoreboard players set *var1 variables 1
execute if score *var1 variables matches 0 run return run function entities:bosses/sea_king/conditions/no_player

#Если босса скидывают в пропасть
execute at @e[type=marker, tag=DrownedArenaMiddle] positioned ~-35 ~-20 ~-35 unless entity @s[dx=70, dz=70, dy=90] run return run function entities:bosses/sea_king/conditions/no_player



function dc:get_call {tick:15, command:"function entities:bosses/sea_king/conditions/time", requirePos:false, requireEntity:true}