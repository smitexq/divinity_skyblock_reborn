#Узнаем кол-во предметов меню (стекла)
data modify storage dsb:cts Temp set value []
data modify storage dsb:cts Temp append from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{null:1b}}}]
execute store result score *var1 variables run data get storage dsb:cts Temp

#Если не хватает менюшки (стекла)
execute unless score *var1 variables matches 26 run function dsb:constructions/water_collector/menu/return_items

#Если нет ведра, то прекратить работу
execute if entity @s[tag=start] unless items block ~ ~ ~ container.13 minecraft:bucket run return run function dsb:constructions/water_collector/work/remove