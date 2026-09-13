setblock 17112022 0 0 minecraft:shulker_box
setblock 17112022 1 0 minecraft:light_blue_shulker_box

#Заполняем предметами
$data modify block 17112022 1 0 Items set from storage dsb:cauldrons_tea $(out).items

#Выставляем предметы без пропусков
loot insert 17112022 0 0 mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

#Возвращаем предметы
$data modify storage dsb:cauldrons_tea $(out).items set from block 17112022 0 0 Items

setblock 17112022 0 0 minecraft:air
setblock 17112022 1 0 minecraft:air