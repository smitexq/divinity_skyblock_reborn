advancement revoke @s only dsb:interactions/placed_dirt

#Ищем блок на пути взгляда
scoreboard players set #temp RecursionDepth 0
execute anchored eyes positioned ^ ^ ^0.01 run function dsb:constructions/sieve/work/block/raycast
#Удаляем запись через 5 секунд
function dsb:constructions/sieve/work/block/remove_record with storage dsb:cts Sieve.Blocks[-1]

#записываем uuid того, кто установил
function dc:gu/generate
data modify storage dsb:cts Sieve.Blocks[-1].uuidOwner set from storage gu:main out