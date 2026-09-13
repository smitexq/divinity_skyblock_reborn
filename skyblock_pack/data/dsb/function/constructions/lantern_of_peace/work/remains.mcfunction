#Остаток
setblock 17112022 0 0 minecraft:light_blue_shulker_box
loot insert 17112022 0 0 loot dsb:items/rotten_remains

#Записываем кол-во, которое будем возвращать
scoreboard players operation *var2 variables = *var1 variables
execute store result block 17112022 0 0 Items[0].count int 1 run scoreboard players remove *var2 variables 150
loot spawn ~ ~ ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

#
scoreboard players set *var1 variables 150


setblock 17112022 0 0 minecraft:air