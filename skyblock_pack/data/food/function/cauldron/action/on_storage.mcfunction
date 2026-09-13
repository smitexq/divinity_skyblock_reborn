setblock 17112022 0 0 minecraft:shulker_box
setblock 17112022 1 0 minecraft:light_blue_shulker_box
#Заполняем текущими предметами из котла
$data modify block 17112022 0 0 Items set from storage dsb:cauldrons_tea $(out).items


###Проверка на то, если вставляется новый четвертый тип предмета (так же, как и с валидностью)
item modify block 17112022 0 0 container.0 food:set_count_1
item modify block 17112022 0 0 container.1 food:set_count_1
item modify block 17112022 0 0 container.2 food:set_count_1

item replace block 17112022 1 0 container.0 from entity @s weapon.mainhand food:set_count_1
loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

execute store result score *var1 variables run data get block 17112022 0 0 Items
execute if score *var1 variables matches 4.. run return run function food:cauldron/action/overflow
###



data remove block 17112022 0 0 Items
###Иначе вставляем еще один предмет
#Таким образом мы убираем пустые слоты между предметами
$data modify block 17112022 1 0 Items set from storage dsb:cauldrons_tea $(out).items
loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
data remove block 17112022 1 0 Items

#Если игрок не на шифте, то добавляем только один предмет, иначе весь стак
execute unless predicate dsb:events/is_sneaking run item replace block 17112022 1 0 container.0 from entity @s weapon.mainhand food:set_count_1
execute if predicate dsb:events/is_sneaking run item replace block 17112022 1 0 container.0 from entity @s weapon.mainhand

loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]


### Убираем из руки, при этом блокируем обновление колец, дабы не вызвать конфликт gu:main
tag @s add BlockInvChanged

execute unless predicate dsb:events/is_sneaking run item modify entity @s weapon.mainhand food:remove_item
execute if predicate dsb:events/is_sneaking run item replace entity @s weapon.mainhand with minecraft:air

tag @s remove BlockInvChanged
###


#Если больше трех, знаит нужно вернуть остатки
execute store result score *var1 variables run data get block 17112022 0 0 Items
execute if score *var1 variables matches 4.. run function food:cauldron/action/remains

playsound minecraft:item.bottle.fill ambient @a ~ ~ ~ 1
#Записываем предметы обратно в хранилище котла
$data modify storage dsb:cauldrons_tea $(out).items set from block 17112022 0 0 Items
setblock 17112022 0 0 minecraft:air
setblock 17112022 1 0 minecraft:air

#Визуал
execute as @e[type=minecraft:interaction,tag=CauldronTea,tag=UpdateVizual] at @s run function food:cauldron/vizual/main with storage gu:main