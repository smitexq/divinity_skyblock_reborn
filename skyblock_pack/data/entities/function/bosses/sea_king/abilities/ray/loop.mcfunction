### Луч, который показывает траекторию полета

#Частицы луча
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
execute unless block ~ ~ ~ #entities:charged_ray run return run function slowcast:stop


execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:bosses/sea_king/abilities/ray/loop