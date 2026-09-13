#Частицы луча
#particle minecraft:dust 0 1 1 2 ~ ~ ~ 0 0 0 0 1 force @a

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~

execute if block ~ ~ ~ #entities:web_weaver unless block ~ ~ ~ minecraft:cobweb run setblock ~ ~ ~ cobweb destroy
execute unless block ~ ~ ~ #entities:web_weaver run function slowcast:stop



execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:mobs/abilities/web_weaver/web_raycast/loop