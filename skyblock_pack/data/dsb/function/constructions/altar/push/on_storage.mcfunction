#Если нет предметов, то ничего не делаем
execute if data storage dsb:cts Altar{SoulsCount:0} run return 0

###Инвентарь спавнера
#В первый слот вставляем душу
setblock 17112022 1 0 minecraft:light_blue_shulker_box{LootTable:"dsb:items/soul"}
setblock 17112022 0 0 minecraft:shulker_box
loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
#
###
#То что игроку дадут
data remove block 17112022 1 0 Items

#Добавляем предметы из спавнера
data modify block 17112022 0 0 Items[0].count set from storage dsb:cts Altar.SoulsCount


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
execute store success score *var1 variables run data modify storage dsb:cts Altar.SoulsCount set from block 17112022 0 0 Items[0].count
execute if score *var1 variables matches 0 run data modify storage dsb:cts Altar.SoulsCount set value 0
###

setblock 17112022 0 0 minecraft:air
setblock 17112022 1 0 minecraft:air

#Виузал
$execute as $(out) at @s run function dsb:constructions/altar/work/vizual with storage gu:main