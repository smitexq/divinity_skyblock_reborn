###Берем предмет из строки и возвращаем его
$data modify block 17112022 0 0 Items append from storage dsb:cts ResearchTable.$(uuid).recipe[$(index)][1]
execute at @s run loot spawn ~ ~1.3 ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

data remove block 17112022 0 0 Items
#Переход к следующему
execute store result storage dsb:cts Temp.index int 1 run scoreboard players remove *var1 variables 1

execute if score *var1 variables matches 0.. run function dsb:constructions/research_table/work/recipe/loop with storage dsb:cts Temp