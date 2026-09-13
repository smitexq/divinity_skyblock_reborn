#Проверяем что предмет совпадает с нужным
$execute unless items block ~ ~ ~ container.13 #$(tag) run return fail
#Если все совпало, то проверяем дальше

###Узнаем требуемое кол-во
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][0].count
execute store result score *var2 variables run data get block ~ ~ ~ Items[{Slot:13b}].count

scoreboard players operation *var1 variables -= *var2 variables
#Если больше одного, то просто записываем разницу
execute if score *var1 variables matches 1.. store result block ~ ~ ~ Items[{Slot:12b}].count int 1 run return run scoreboard players get *var1 variables

#иначе заменяем на "готово" и выставляем успех на этот предмет 1
item replace block ~ ~ ~ container.12 with minecraft:orange_stained_glass_pane[minecraft:hide_tooltip={}, minecraft:custom_data={null:1b}]
$data modify storage dsb:cts ResearchTable.$(uuid).successResult[$(index)].num set value 1


###Узнаем кол-во предметов для изучения, сопоставляем со списком successResult (кол-во единиц)
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe
$data modify storage dsb:cts Temp.elements append from storage dsb:cts ResearchTable.$(uuid).successResult[{num:1}]
execute store result score *var2 variables run data get storage dsb:cts Temp.elements

execute if score *var1 variables = *var2 variables run function dsb:constructions/research_table/work/remains/start with storage dsb:cts Temp