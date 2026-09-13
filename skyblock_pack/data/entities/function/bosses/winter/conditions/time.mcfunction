#Если игрок вышел за пределы арены (или умер)
scoreboard players set *var1 variables 0
execute at @e[type=marker, tag=WinterQueenArenaMiddle] as @a if predicate entities:bosses/winter run scoreboard players set *var1 variables 1
execute if score *var1 variables matches 0 run return run function entities:bosses/winter/conditions/no_player


function dc:get_call {tick:5, command:"function entities:bosses/winter/conditions/time", requirePos:false, requireEntity:true}