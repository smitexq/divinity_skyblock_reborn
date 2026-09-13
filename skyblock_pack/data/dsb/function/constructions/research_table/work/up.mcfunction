scoreboard players add @s r.tableIndex 1
tag @s remove arrowUp


execute if entity @s[tag=!initRecipe] run return 0

#Узнаем количество строк
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(out).recipe

#Если вышли за пределы списка, то ставим индекс с начала списка 0
execute if score @s r.tableIndex < *var1 variables run return 0

scoreboard players set @s r.tableIndex 0
# scoreboard players operation @s r.tableIndex = *var1 variables
# scoreboard players set *var1 variables -1
# scoreboard players operation @s r.tableIndex *= *var1 variables