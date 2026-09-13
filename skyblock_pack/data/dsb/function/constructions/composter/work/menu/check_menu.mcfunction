#Узнаем кол-во предметов меню (стекла)
data modify storage dsb:cts Temp set value []
data modify storage dsb:cts Temp append from entity @s Items[{components:{"minecraft:custom_data":{null:1b}}}]
execute store result score *var1 variables run data get storage dsb:cts Temp

#Если нет кнопки Переработать, то добавляем тег. Если кнопку заменили предметом, то он будет возвращен, после этого начинаем считать очки
execute unless items entity @s container.9 minecraft:green_stained_glass_pane[minecraft:custom_data~{null:1b, recycling:1b}] run tag @s add startRecycling

function dc:gu/generate
#Если не хватает менюшки (стекла)
execute unless score *var1 variables matches 21 run function dsb:constructions/composter/work/menu/return_items with storage gu:main

#Перевод растений в очки
execute if entity @s[tag=startRecycling] run function dsb:constructions/composter/work/items with storage gu:main



##Проверка через n секунд (чем дальше игрок, тем реже проверка)
execute unless entity @p[distance=..30] run return run function dc:get_call {tick:120, command:"function dsb:constructions/composter/work/menu/check_menu", requirePos:false, requireEntity:true}

execute unless entity @p[distance=..7] run return run function dc:get_call {tick:50, command:"function dsb:constructions/composter/work/menu/check_menu", requirePos:false, requireEntity:true}

function dc:get_call {tick:10, command:"function dsb:constructions/composter/work/menu/check_menu", requirePos:false, requireEntity:true}