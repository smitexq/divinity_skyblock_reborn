#Узнаем кол-во предметов меню (стекла)
data modify storage dsb:cts Temp set value []
data modify storage dsb:cts Temp append from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{null:1b}}}]
execute store result score *var1 variables run data get storage dsb:cts Temp

#Если нет стрелки вверх, то добавляем тег. Если кнопку заменили предметом, то он будет возвращен
execute unless items block ~ ~ ~ container.3 minecraft:yellow_stained_glass_pane[minecraft:custom_data={null:1b, arrowUp:1b}] run tag @s add arrowUp
execute unless items block ~ ~ ~ container.21 minecraft:yellow_stained_glass_pane[minecraft:custom_data={null:1b, arrowDown:1b}] run tag @s add arrowDown

function dc:gu/generate
#Если не хватает менюшки (стекла)
execute unless score *var1 variables matches 24 run function dsb:constructions/research_table/work/menu/return_items

###Проверка рецептов
execute if items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:custom_data~{tag:"recipe"}] run function dsb:constructions/research_table/work/recipe/check_id with block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data"
execute if entity @s[tag=initRecipe] unless items block ~ ~ ~ container.10 minecraft:structure_block[minecraft:custom_data~{tag:"recipe"}] run function dsb:constructions/research_table/work/recipe/remove with storage gu:main
###

#индексы +-
execute if entity @s[tag=arrowUp] run function dsb:constructions/research_table/work/up with storage gu:main
execute if entity @s[tag=arrowDown] run function dsb:constructions/research_table/work/down with storage gu:main

#Сохранение предметов (строки)
function dsb:constructions/research_table/work/menu/vizual with storage gu:main

###Отображение количества предметов
execute if entity @s[tag=initRecipe] run function dsb:constructions/research_table/work/menu/count_items
###