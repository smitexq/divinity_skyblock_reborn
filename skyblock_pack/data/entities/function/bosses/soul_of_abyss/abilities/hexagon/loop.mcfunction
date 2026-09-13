#Частицы луча
particle end_rod ^-0.4 ^ ^ 0 0 0 0 1 force
particle end_rod ^0.4 ^ ^ 0 0 0 0 1 force
particle end_rod ^ ^0.4 ^ 0 0 0 0 1 force
particle end_rod ^ ^-0.4 ^ 0 0 0 0 1 force
particle end_rod ^0.28 ^0.28 ^ 0 0 0 0 1 force
particle end_rod ^0.28 ^-0.28 ^ 0 0 0 0 1 force
particle end_rod ^-0.28 ^0.28 ^ 0 0 0 0 1 force
particle end_rod ^-0.28 ^-0.28 ^ 0 0 0 0 1 force



#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
execute unless block ~ ~ ~ #minecraft:air run return run function slowcast:stop

#Урон
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run damage @s 7 minecraft:magic


execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:bosses/soul_of_abyss/abilities/hexagon/loop