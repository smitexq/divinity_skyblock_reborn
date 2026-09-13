#Достаем все записи (то есть все установленные блоки) на текущей позиции и конкретного блока
data modify storage dsb:cts Temp set value []
$execute store success score *var1 variables run data modify storage dsb:cts Temp append from storage dsb:cts Sieve.Blocks[{x:$(x), y:$(y), z:$(z), id:'$(id)'}]
#Если нет совпадений, значит блок установил игрок БЕЗ удачи
execute if score *var1 variables matches 0 run return run kill @s

#Записываем текущее время
execute store result score *var1 variables run time query gametime
#Первая запись была раньше добавлена
execute store result score *var2 variables run data get storage dsb:cts Temp[0].time

#Время установки блока должно быть МЕНЬШЕ текущего времени
execute unless score *var2 variables <= *var1 variables run return run kill @s

###Блок использовался, значит удаляем его из списка установленных
$data remove storage dsb:cts Sieve.Blocks[{x:$(x), y:$(y), z:$(z)}]

#Позиция подмостков
tp @s ~ ~-1 ~
execute store result storage dsb:cts Temp[0].y int 1 run data get entity @s Pos[1]
kill @s

#Узнаем uuid игрока и записываем в хранилище сита
tag @e[type=minecraft:block_display, tag=sieveBlock, distance=..1] add Luck
function dsb:constructions/sieve/work/block/store_uuid with storage dsb:cts Temp[0]