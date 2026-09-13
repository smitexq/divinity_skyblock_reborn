#Частицы луча
particle minecraft:dust_color_transition{from_color:[0.078f,0.78f,0.06f], to_color:[0.75f,0.86f,0.12f],scale:2f} ~ ~ ~ 0 0 0 0 1 force @a

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
execute unless block ~ ~ ~ #entities:charged_ray run return run function slowcast:stop

# execute positioned ~-0.15 ~-0.15 ~-0.15 as @a[dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function entities:mobs/abilities/charged_ray_poison/raycast/damage
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run function entities:mobs/abilities/charged_ray_poison/raycast/damage


execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:mobs/abilities/charged_ray_poison/raycast/loop