#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1

execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
summon minecraft:evoker_fangs
execute as @a[distance=..1.2,tag=!BittenByFangs] at @s run function entities:mobs/abilities/summon_fangs/particle

execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^1 run function entities:mobs/abilities/summon_fangs/loop