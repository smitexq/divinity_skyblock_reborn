###Выдача изучения
function dsb:constructions/research_table/work/remains/give_research
playsound minecraft:ui.cartography_table.take_result ambient @a[distance=..10]
###

#Убираем один рецепт
item modify block ~ ~ ~ container.10 food:remove_item

data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out

###Остаток для текущего предмета
#кол-во которое положилли
execute store result score *var2 variables run data get block ~ ~ ~ Items[{Slot:13b}].count
#Узнаем кол-во, которое нужно было
$execute store result score *var3 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][0].count

#остаток
execute store result block ~ ~ ~ Items[{Slot:13b}].count int 1 run scoreboard players operation *var2 variables -= *var3 variables
execute if score *var2 variables matches 0 run item replace block ~ ~ ~ container.13 with minecraft:air
###

#Записываем кол-во предметов
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe
execute store result storage dsb:cts Temp.index int 1 run scoreboard players remove *var1 variables 1
#Изменяем кол-во в хранилище
function dsb:constructions/research_table/work/remains/loop with storage dsb:cts Temp

#Выдаем остатки (убираем лишнее)
function dsb:constructions/research_table/work/recipe/remove with storage gu:main