execute if entity @s[tag=!initRecipe] run return 0

###Проверяем переключился ли предмет, если нет, то ничего не делаем
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(out).lastIndex
execute if score @s r.tableIndex = *var1 variables run return 0
###

data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
$data modify storage dsb:cts Temp.lastIndex set from storage dsb:cts ResearchTable.$(out).lastIndex
execute store result storage dsb:cts Temp.currentIndex int 1 run scoreboard players get @s r.tableIndex

function dsb:constructions/research_table/work/menu/load_string with storage dsb:cts Temp

$execute store result storage dsb:cts ResearchTable.$(out).lastIndex int 1 run scoreboard players get @s r.tableIndex