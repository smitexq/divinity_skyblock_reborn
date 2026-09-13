#Узнаем кол-во
$execute store result score *var3 variables run data get storage dsb:rings $(out).SaveInventory[{Slot:$(slot)b,components:{"minecraft:custom_data":{id:"fuel"}}}].count

#Отнимаем 1
$execute store result storage dsb:rings $(out).SaveInventory[{Slot:$(slot)b,components:{"minecraft:custom_data":{id:"fuel"}}}].count int 1 run scoreboard players remove *var3 variables 1

#Если стало 0, то удаляем
$execute if score *var3 variables matches 0 run data remove storage dsb:rings $(out).SaveInventory[{Slot:$(slot)b}]