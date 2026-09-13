scoreboard players add #temp RecursionDepth 1
execute if score #temp RecursionDepth matches 575 run return 0

execute unless block ~ ~ ~ #dsb:on_sieve positioned ^ ^ ^0.01 run return run function dsb:constructions/sieve/work/block/raycast

###Записываем координаты установки блока
summon marker ~ ~ ~ {Tags:["this"]}
data modify storage dsb:cts Sieve.Blocks append value {time:0, x:0, y:0, z:0}

#Добавляем тип блока
execute if block ~ ~ ~ minecraft:dirt run data modify storage dsb:cts Sieve.Blocks[-1].id set value "minecraft:dirt"
execute if block ~ ~ ~ minecraft:gravel run data modify storage dsb:cts Sieve.Blocks[-1].id set value "minecraft:gravel"
execute if block ~ ~ ~ minecraft:soul_sand run data modify storage dsb:cts Sieve.Blocks[-1].id set value "minecraft:soul_sand"
#время и координаты
execute store result storage dsb:cts Sieve.Blocks[-1].time int 1 run time query gametime
execute store result storage dsb:cts Sieve.Blocks[-1].x int 1 run data get entity @e[type=marker, tag=this, distance=..1, limit=1] Pos[0]
execute store result storage dsb:cts Sieve.Blocks[-1].y int 1 run data get entity @e[type=marker, tag=this, distance=..1, limit=1] Pos[1]
execute store result storage dsb:cts Sieve.Blocks[-1].z int 1 run data get entity @e[type=marker, tag=this, distance=..1, limit=1] Pos[2]

kill @e[type=marker, tag=this, distance=..1, limit=1]