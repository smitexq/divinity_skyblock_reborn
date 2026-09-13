setblock 17112022 0 0 minecraft:light_blue_shulker_box

#Устанавливаем предметы из хранилища и выдаем их
$data modify block 17112022 0 0 Items set from storage dsb:cauldrons_tea $(out).items
loot spawn ~ ~ ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 0 0 minecraft:air

#Удаляем хранилище сущности
$data remove storage dsb:cauldrons_tea $(out)
#И все отображения
$kill @e[type=#food:display,tag=$(out)]