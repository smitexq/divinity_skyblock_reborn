#Помечаем, что игрок был задамажен
execute positioned ~ ~1 ~ positioned ~-0.4 ~-0.4 ~-0.4 as @p[dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run function entities:bosses/winter/abilities/dash/next_player/damage
#Помечаем, что босс коснулся игрока
execute positioned ~ ~1 ~ positioned ~-0.4 ~-0.4 ~-0.4 as @p[dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run tag @e[type=stray, tag=WinterBoss] add TargetPlayer