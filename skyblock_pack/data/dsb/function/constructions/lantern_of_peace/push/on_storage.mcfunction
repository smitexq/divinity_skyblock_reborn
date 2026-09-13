#Если нет предметов, то ничего не делаем
$execute if data storage dsb:cts LanternOfPeace.$(out){itemCount:0} run return run tag $(out) remove BlockingBossSpawn

#Вставляем предмет в шалкер
setblock 17112022 0 0 minecraft:light_blue_shulker_box
loot insert 17112022 0 0 loot dsb:items/rotten_remains

#Кол-во гнилых останков
$execute store result score *var1 variables run data get storage dsb:cts LanternOfPeace.$(out).itemCount
#Кол-во возвращаемых останков
scoreboard players set *var2 variables 0

#если не на шифте, то забираем один предмет из хранилища
execute unless predicate dsb:events/is_sneaking run scoreboard players add *var2 variables 1
#Если на шифте, проверяем есть ли там стак предметов
execute if predicate dsb:events/is_sneaking if score *var1 variables matches 64.. run scoreboard players add *var2 variables 64
#Если нету стака, то присваиваем все
execute if predicate dsb:events/is_sneaking unless score *var1 variables matches 64.. run scoreboard players operation *var2 variables = *var1 variables



#Выдача предмета
execute store result block 17112022 0 0 Items[0].count int 1 run scoreboard players get *var2 variables
loot spawn ~ ~ ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
###

scoreboard players operation *var1 variables -= *var2 variables
$execute if score *var1 variables matches 0 as $(out) at @s run function dsb:constructions/lantern_of_peace/work/deactivate
###Вовзращаем остатки
$execute store result storage dsb:cts LanternOfPeace.$(out).itemCount int 1 run scoreboard players get *var1 variables
###

setblock 17112022 0 0 minecraft:air

#Виузал
$execute as $(out) at @s run function dsb:constructions/lantern_of_peace/work/vizual with storage gu:main