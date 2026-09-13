tag @s add initRecipe
#Если рецепт не поменялся, то ничего не делаем
$execute if entity @s[tag=$(id)] run return 0

data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
$data modify storage dsb:cts Temp.id set value $(id)

#Добавление нового рецепта
function dsb:constructions/research_table/work/recipe/new with storage dsb:cts Temp

scoreboard players set @s r.tableIndex 0