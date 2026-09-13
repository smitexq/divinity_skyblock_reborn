tag @s add TargetFromWinterQueen

execute as @a[distance=..50] at @s run playsound minecraft:entity.breeze.jump ambient @s
playsound minecraft:entity.wither.break_block ambient @s ~ ~ ~ 0.3

particle minecraft:snowflake ~ ~1 ~ 1 1 1 0.1 50 force
particle minecraft:sweep_attack ~ ~1 ~ 0.4 0.8 0.4 0.3 4 force

#Урон
damage @s 14 minecraft:freeze
effect give @s minecraft:darkness 4
effect give @s minecraft:slowness 15 1
