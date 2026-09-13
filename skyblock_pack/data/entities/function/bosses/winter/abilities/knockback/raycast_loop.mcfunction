#Частицы луча
particle minecraft:sweep_attack ~ ~ ~ 0 0 0 2 1 force @a
particle minecraft:firework ~ ~ ~ 0.5 0.5 0.5 0.1 10 force @a
particle minecraft:snowflake ~ ~ ~ 0.8 0.8 0.8 0.05 15 force @a
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0 3 force @a

playsound minecraft:entity.sniffer.sniffing ambient @a ~ ~ ~ 0.3

#Code Cloud Wolf's
scoreboard players remove #temp slowcast.itt 1
execute if score #temp slowcast.itt matches 0 run tp @s ~ ~ ~
#

execute positioned ~-1 ~-1 ~-1 as @a[dx=1, dy=1, dz=1, tag=!LabelFromWinterBossKnock] facing entity @e[type=minecraft:stray, tag=WinterBoss] eyes rotated ~ 25 facing ^ ^ ^-1 run function entities:bosses/winter/abilities/knockback/knock

execute if score #temp slowcast.itt matches 1.. positioned ^ ^ ^0.5 run function entities:bosses/winter/abilities/knockback/raycast_loop