tag @s remove start
scoreboard players reset @s WaterCollector
#Очистка меню
item replace block ~ ~ ~ container.4 with minecraft:air
data modify block ~ ~ ~ Items append from storage dsb:cts WaterCollector.StartMenu[]

#Очищаем функцию работы
function dc:gu/generate
data modify storage dsb:dc_remove temp.UUID set from storage gu:main out
data modify storage dsb:dc_remove temp.command set value "function dsb:constructions/water_collector/work/init"
function dc:clear_schedule with storage dsb:dc_remove temp