$execute store result score *var1 variables run data get storage dsb:cauldrons_tea $(out).items
execute if score *var1 variables matches 0 run return 0

setblock 17112022 0 0 minecraft:shulker_box
setblock 17112022 1 0 minecraft:light_blue_shulker_box

###Вставляем последний предмет
$data modify block 17112022 0 0 Items set from storage dsb:cauldrons_tea $(out).items

execute if score *var1 variables matches 3 run function food:cauldron/hurt/check_sneaking {slot: 2}
execute if score *var1 variables matches 2 run function food:cauldron/hurt/check_sneaking {slot: 1}
execute if score *var1 variables matches 1 run function food:cauldron/hurt/check_sneaking {slot: 0}

#Выдача предмета
loot spawn ~ ~ ~ mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
###

###Вовзращаем остатки
#Если в шалкере не будет предметов, то не будет Items и будет ошибка, тогда мы просто очистим хранилище
$execute store success score *var1 variables run data modify storage dsb:cauldrons_tea $(out).items set from block 17112022 0 0 Items
$execute if score *var1 variables matches 0 run data modify storage dsb:cauldrons_tea $(out).items set value []

setblock 17112022 0 0 minecraft:air
setblock 17112022 1 0 minecraft:air

#Отображение предметов
execute as @e[type=minecraft:interaction,tag=CauldronTea,tag=UpdateVizual] at @s run function food:cauldron/vizual/main with storage gu:main