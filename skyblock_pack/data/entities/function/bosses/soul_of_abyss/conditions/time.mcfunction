#Если игрок вышел за пределы арены (или умер)
scoreboard players set *var1 variables 0
execute at @e[type=marker, tag=SoulOfAbyssArenaMiddle] as @a if predicate entities:bosses/soul_of_abyss run scoreboard players set *var1 variables 1
execute if score *var1 variables matches 0 run return run function entities:bosses/soul_of_abyss/conditions/no_player

#Если босса скидывают в пропасть
execute at @e[type=marker, tag=SoulOfAbyssArenaMiddle] positioned ~-30 ~-20 ~-30 unless entity @s[dx=60, dz=60, dy=90] run return run function entities:bosses/soul_of_abyss/conditions/no_player


function dc:get_call {tick:15, command:"function entities:bosses/soul_of_abyss/conditions/time", requirePos:false, requireEntity:true}