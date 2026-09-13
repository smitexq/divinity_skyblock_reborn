###Запись отстатков предметов
$execute store result score *var1 variables run data get storage dsb:cauldrons_tea $(out).items[{components:{"minecraft:custom_data":{id:"black_tea_leaves"}}}].count
$execute store result storage dsb:cauldrons_tea $(out).items[{components:{"minecraft:custom_data":{id:"black_tea_leaves"}}}].count int 1 run scoreboard players remove *var1 variables 7

$execute store result score *var1 variables run data get storage dsb:cauldrons_tea $(out).items[{id:"minecraft:sugar"}].count
$execute store result storage dsb:cauldrons_tea $(out).items[{id:"minecraft:sugar"}].count int 1 run scoreboard players remove *var1 variables 4

$execute store result score *var1 variables run data get storage dsb:cauldrons_tea $(out).items[{id:"minecraft:sweet_berries"}].count
$execute store result storage dsb:cauldrons_tea $(out).items[{id:"minecraft:sweet_berries"}].count int 1 run scoreboard players remove *var1 variables 3