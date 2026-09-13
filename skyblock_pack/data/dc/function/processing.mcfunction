#Записываем координаты запроса
execute if data storage dsb:dc init{requirePos:1} summon marker run function dc:get_pos
#Если сущность, то записываем uuid и ник
execute if data storage dsb:dc init{requireEntity:1} as @s run function dc:get_uuid

#Записываем время, в которое должна выполнится функция 
execute store result score *var1 variables run time query gametime
execute store result score *var2 variables run data get storage dsb:dc init.time
execute store result storage dsb:dc init.time int 1 run scoreboard players operation *var1 variables += *var2 variables

#Dimension
execute if dimension minecraft:overworld run data modify storage dsb:dc init.dimension set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage dsb:dc init.dimension set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage dsb:dc init.dimension set value "minecraft:the_end"
execute if dimension gen:void_dimension run data modify storage dsb:dc init.dimension set value "gen:void_dimension"
execute if dimension gen:winter_queen run data modify storage dsb:dc init.dimension set value "gen:winter_queen"

#После обработки запроса добавляем задачу в список
data modify storage dsb:dc Tasks append from storage dsb:dc init