#Узнаем кол-во которое положили
$execute store result score *var2 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][1].count
#Узнаем кол-во, которое нужно было
$execute store result score *var3 variables run data get storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][0].count

#записываем разницу
$execute store result storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][1].count int 1 run scoreboard players operation *var2 variables -= *var3 variables
$execute if score *var2 variables matches ..0 run data modify storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][1] set value {}


#Переход к следующему
execute store result storage dsb:cts Temp.index int 1 run scoreboard players remove *var1 variables 1

execute if score *var1 variables matches 0.. run function dsb:constructions/research_table/work/remains/loop with storage dsb:cts Temp