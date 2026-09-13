item replace block ~ ~ ~ container.4 with minecraft:black_stained_glass_pane[minecraft:custom_data={null:1b}, minecraft:hide_tooltip={}]

execute if block ~ ~2 ~ #minecraft:leaves run scoreboard players add @s WaterCollector 1
execute if predicate dsb:rain run scoreboard players add @s WaterCollector 1

###Изменение текстуры предмета
scoreboard players set *var2 variables 3
scoreboard players operation *var1 variables = @s WaterCollector
scoreboard players operation *var1 variables /= *var2 variables
# прибавляем 50, так как текстуры начинаются с этого
execute store result storage dsb:temp WaterCollector.level int 1 run scoreboard players add *var1 variables 50

function dsb:constructions/water_collector/work/vizual with storage dsb:temp WaterCollector
###

#Частицы
scoreboard players set *var2 variables 4
scoreboard players operation *var1 variables = @s WaterCollector
scoreboard players operation *var1 variables %= *var2 variables
execute if score *var1 variables matches 0 run particle minecraft:dripping_water ~ ~1.9 ~ 0.2 0 0.2 0 6