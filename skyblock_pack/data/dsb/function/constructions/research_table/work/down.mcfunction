scoreboard players remove @s r.tableIndex 1
tag @s remove arrowDown


execute if entity @s[tag=!initRecipe] run return 0

$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(out).recipe

#Если вышли за пределы списка, то ставим индекс с конца (положительно)
execute if score @s r.tableIndex matches 0.. run return 0

scoreboard players operation @s r.tableIndex = *var1 variables
# scoreboard players set *var1 variables -1
# scoreboard players operation @s r.tableIndex *= *var1 variables

scoreboard players remove @s r.tableIndex 1

