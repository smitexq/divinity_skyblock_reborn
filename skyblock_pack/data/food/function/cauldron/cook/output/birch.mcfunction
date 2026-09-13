###Запись отстатков предметов
$execute store result score *var1 variables run data get storage dsb:cauldrons_tea $(out).items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}].count
$execute store result storage dsb:cauldrons_tea $(out).items[{components:{"minecraft:custom_data":{id:"tea_leaves"}}}].count int 1 run scoreboard players remove *var1 variables 5

$execute store result score *var1 variables run data get storage dsb:cauldrons_tea $(out).items[{id:"minecraft:birch_leaves"}].count
$execute store result storage dsb:cauldrons_tea $(out).items[{id:"minecraft:birch_leaves"}].count int 1 run scoreboard players remove *var1 variables 14