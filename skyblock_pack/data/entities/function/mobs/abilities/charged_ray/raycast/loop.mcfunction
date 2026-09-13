#Частицы луча
particle minecraft:dust{color:[0f,1f,1f],scale:2f} ~ ~ ~ 0 0 0 0 1 force @a

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
execute unless block ~ ~ ~ #entities:charged_ray run return run function slowcast:stop

# execute positioned ~-0.15 ~-0.15 ~-0.15 as @a[dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run damage @s 11 minecraft:magic
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run damage @s 15 minecraft:magic


execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:mobs/abilities/charged_ray/raycast/loop