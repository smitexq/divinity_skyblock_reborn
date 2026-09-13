tp @e[type=stray, tag=WinterBoss] ~ ~ ~

###Если ударил игрока, то переход к следующему через время
#Если нет игрока, то ничего не делаем
execute positioned ~ ~1 ~ positioned ~-0.1 ~-0.1 ~-0.1 as @p[dx=0, tag=!TargetFromWinterQueen] positioned ~-0.8 ~-0.8 ~-0.8 unless entity @s[dx=0] run return 0 
#иначе выдача урона
execute positioned ~ ~1 ~ positioned ~-0.1 ~-0.1 ~-0.1 as @p[dx=0, tag=!TargetFromWinterQueen] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run function entities:bosses/winter/abilities/dash/next_player/damage

#переход к следующему
execute as @e[type=stray, tag=WinterBoss] at @s run function dc:get_call {tick:5, command:"function entities:bosses/winter/abilities/dash/to_next_player", requirePos:false, requireEntity:true}