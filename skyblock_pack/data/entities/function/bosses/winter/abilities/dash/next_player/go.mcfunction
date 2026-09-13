particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a
particle minecraft:dust_color_transition{from_color:[0.05f,0.33f,0.84f],to_color:[0.12f,0.94f,0.93f],scale:1.5f} ~ ~1 ~ 0.3 0.3 0.3 0.5 1 force @a

#Если наткнулся на игрока/блок
scoreboard players set #exit slowcast 0

execute unless block ~ ~ ~ air run scoreboard players set #exit slowcast 1
execute positioned ~ ~1 ~ positioned ~-0.1 ~-0.1 ~-0.1 as @p[dx=0, tag=!TargetFromWinterQueen] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run scoreboard players set #exit slowcast 1
execute positioned ^ ^-1 ^1 if block ~ ~ ~ air run scoreboard players set #exit slowcast 1
execute if score @s RecursionDepth matches 120.. run scoreboard players set #exit slowcast 1

execute if score #exit slowcast matches 1 run return run function entities:bosses/winter/abilities/dash/next_player/stop
#

scoreboard players add @s RecursionDepth 1
execute positioned ^ ^ ^0.5 run function entities:bosses/winter/abilities/dash/next_player/go