###Определяем позицию установки блока
$data modify storage dsb:cts Temp set value {x:0, y:0, z:0, id:"minecraft:$(block)"}

execute store result storage dsb:cts Temp.x int 1 run data get entity @s Pos[0]
execute store result storage dsb:cts Temp.y int 1 run data get entity @s Pos[1]
execute store result storage dsb:cts Temp.z int 1 run data get entity @s Pos[2]

function dsb:constructions/sieve/work/block/get_uuid with storage dsb:cts Temp