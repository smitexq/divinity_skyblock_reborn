###Призыв ифритов
#Кол-во: 40% на 1, 35% на 2, 25% на 3
execute store result score *var1 variables run random value 0..99 dsb:summon_blaze

execute if score *var1 variables matches 0..39 run scoreboard players set *var2 variables 1
execute if score *var1 variables matches 40..74 run scoreboard players set *var2 variables 2
execute if score *var1 variables matches 75..99 run scoreboard players set *var2 variables 3

function dsb:constructions/blaze_spawner/work/spawn/random_pos
execute if score *var2 variables matches 2.. run function dsb:constructions/blaze_spawner/work/spawn/random_pos
execute if score *var2 variables matches 3 run function dsb:constructions/blaze_spawner/work/spawn/random_pos
###

#шанс 30% сломать обсидиан
execute store result score *var1 variables run random value 0..9 dsb:break_obsidian_spawner
execute unless score *var1 variables matches 0..2 run return 0

#Узнаем кол-во обсидиана (длинна массива). Выберем случайны индекс и заменим там обсидиан
data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
$execute store result score *var1 variables run data get storage dsb:cts BlazeSpawner.$(out).ReplaceableBlocks
execute store result storage dsb:cts Temp.len int 1 run scoreboard players remove *var1 variables 1
#Заменяем обсидиан
function dsb:constructions/blaze_spawner/work/on_blocks/random_block with storage dsb:cts Temp