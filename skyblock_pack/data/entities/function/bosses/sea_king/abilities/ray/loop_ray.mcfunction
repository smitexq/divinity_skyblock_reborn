#Частицы луча
particle minecraft:dust_color_transition{from_color:[0.78f,0.86f,0.04f], to_color:[0.82f,0.078f,0.24f], scale:3f} ~ ~ ~ 0 0 0 0 1 force @a

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
execute unless block ~ ~ ~ #entities:charged_ray run return run function slowcast:stop

execute positioned ~-0.15 ~-0.15 ~-0.15 as @a[dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run damage @s 14 minecraft:magic
# execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run damage @s 14 minecraft:out_of_world


execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:bosses/sea_king/abilities/ray/loop_ray