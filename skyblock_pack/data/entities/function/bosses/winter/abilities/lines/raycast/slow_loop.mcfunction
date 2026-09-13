#Частицы луча
particle minecraft:glow ~ ~ ~ 0 0 0 0 1 force @a

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1
execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
#

execute positioned ~-0.25 ~-0.25 ~-0.25 as @a[dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run damage @s 14 minecraft:magic

execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:bosses/winter/abilities/lines/raycast/slow_loop