data modify entity @s Tags set value ["initResearchTable"]

###Возврат предметов
setblock 17112022 0 0 minecraft:light_blue_shulker_box

#Предмет в ингридиентах (текущий)
item replace block 17112022 0 0 container.0 from block ~ ~ ~ container.13
execute at @s run loot spawn ~ ~1.3 ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
item replace block ~ ~ ~ container.13 with minecraft:air
data remove block 17112022 0 0 Items

data modify storage dsb:cts Temp set value {}
data modify storage dsb:cts Temp.uuid set from storage gu:main out
$data modify storage dsb:cts Temp.lastIndex set from storage dsb:cts ResearchTable.$(out).lastIndex

function dsb:constructions/research_table/work/recipe/delete_current_item with storage dsb:cts Temp
#

data modify storage dsb:cts Temp set value {}
#кол-во предметов для крафта
$execute store result score *var1 variables run data get storage dsb:cts ResearchTable.$(out).recipe
execute store result storage dsb:cts Temp.index int 1 run scoreboard players remove *var1 variables 1

data modify storage dsb:cts Temp.uuid set from storage gu:main out

function dsb:constructions/research_table/work/recipe/loop with storage dsb:cts Temp
setblock 17112022 0 0 minecraft:air
###

#Нет предметов
$data modify storage dsb:cts ResearchTable.$(out).recipe set value []
$data modify storage dsb:cts ResearchTable.$(out).successResult set value [{num:0},{num:0},{num:0},{num:0},{num:0},{num:0}]
data modify block ~ ~ ~ Items append from storage dsb:cts ResearchTable.StartMenu[]