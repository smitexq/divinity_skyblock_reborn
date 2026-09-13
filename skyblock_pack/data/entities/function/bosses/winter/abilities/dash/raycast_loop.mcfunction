#Частицы луча
particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0 2 force @a
particle minecraft:dust_color_transition{from_color:[0.05f,0.33f,0.84f],to_color:[0.12f,0.94f,0.93f],scale:1.5f} ~ ~1 ~ 0.3 0.3 0.3 0.5 1 force @a

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1
execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
#

#Если наткнулся на игрока
scoreboard players set #exit slowcast 0

execute unless block ~ ~ ~ air run scoreboard players set #exit slowcast 1
#куб 0.8 блока
execute positioned ~ ~1 ~ positioned ~-0.4 ~-0.4 ~-0.4 as @a[dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run scoreboard players set #exit slowcast 1
execute positioned ^ ^-1 ^1 if block ~ ~ ~ air run scoreboard players set #exit slowcast 1

execute if score #exit slowcast matches 1 run function slowcast:stop
#

execute if score #temp slowcast.itt matches 1.. run tp @e[type=stray, tag=WinterBoss] ~ ~ ~
execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:bosses/winter/abilities/dash/raycast_loop