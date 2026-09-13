#В первый слот вставляем душу
setblock 17112022 1 0 minecraft:light_blue_shulker_box{LootTable:"dsb:items/soul"}
setblock 17112022 0 0 minecraft:shulker_box
loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
#
data remove block 17112022 1 0 Items

###Вставляем кол-во душ из хранилища. Если его там 0, то заменяем на воздух
data modify block 17112022 0 0 Items[0].count set from storage dsb:cts Altar.SoulsCount
execute if data storage dsb:cts Altar{SoulsCount:0} run item replace block 17112022 0 0 container.0 with minecraft:air

#Если игрок не на шифте, то добавляем только один предмет, иначе весь стак
execute unless predicate dsb:events/is_sneaking run item replace block 17112022 1 0 container.0 from entity @s weapon.mainhand food:set_count_1
execute if predicate dsb:events/is_sneaking run item replace block 17112022 1 0 container.0 from entity @s weapon.mainhand

#Добавляем предмет из руки к предметам в котле
loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

### Убираем из руки, при этом блокируем обновление колец, дабы не вызвать конфликт gu:main
tag @s add BlockInvChanged

execute unless predicate dsb:events/is_sneaking run item modify entity @s weapon.mainhand food:remove_item
execute if predicate dsb:events/is_sneaking run item replace entity @s weapon.mainhand with minecraft:air

tag @s remove BlockInvChanged
###

#Если больше стака, значит нужно вернуть остатки
execute store result score *var1 variables run data get block 17112022 0 0 Items
execute if score *var1 variables matches 2.. run function dsb:constructions/cauldron/work/remains

#Записываем предметы обратно в хранилище котла
data modify storage dsb:cts Altar.SoulsCount set from block 17112022 0 0 Items[0].count
setblock 17112022 0 0 minecraft:air
setblock 17112022 1 0 minecraft:air

#Виузал
$execute as $(out) at @s run function dsb:constructions/altar/work/vizual with storage gu:main