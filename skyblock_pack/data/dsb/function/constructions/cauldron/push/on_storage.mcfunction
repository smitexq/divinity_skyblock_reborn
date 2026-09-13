#Если нет предметов, то ничего не делаем
$execute if data storage dsb:cts Cauldron.$(out){itemCount:0} run return 0

setblock 17112022 1 0 minecraft:light_blue_shulker_box
setblock 17112022 0 0 minecraft:light_blue_shulker_box{Items:[{Slot:0b, id:"minecraft:cobblestone", count:1}]}

$data modify block 17112022 0 0 Items[0].count set from storage dsb:cts Cauldron.$(out).itemCount


###
#Если игрок НЕ на шифте, то берем только один предмет и из шалкера убираем так же один
execute unless predicate dsb:events/is_sneaking run item replace block 17112022 1 0 container.0 from block 17112022 0 0 container.0 food:set_count_1
execute unless predicate dsb:events/is_sneaking run item modify block 17112022 0 0 container.0 food:remove_item

#Иначе забираем весь стак
execute if predicate dsb:events/is_sneaking run item replace block 17112022 1 0 container.0 from block 17112022 0 0 container.0
execute if predicate dsb:events/is_sneaking run item replace block 17112022 0 0 container.0 with minecraft:air

#Выдача предмета
loot spawn ~ ~ ~ mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
###


###Вовзращаем остатки
#Если в шалкере не будет предметов, то не будет Items и будет ошибка, тогда мы просто ставим значение 0
$execute store success score *var1 variables run data modify storage dsb:cts Cauldron.$(out).itemCount set from block 17112022 0 0 Items[0].count
$execute if score *var1 variables matches 0 run data modify storage dsb:cts Cauldron.$(out).itemCount set value 0
###

setblock 17112022 0 0 minecraft:air
setblock 17112022 1 0 minecraft:air

#Виузал
$execute as $(out) at @s run function dsb:constructions/cauldron/work/vizual with storage gu:main