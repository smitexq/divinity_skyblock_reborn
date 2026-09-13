###Перед удалением записи в хранилище нужно вернуть все возможные фолианты
$data modify storage dsb:temp temp set from storage dsb:cts Libraries[{UUID:$(out)}].Upgrades
setblock 17112022 1 0 minecraft:light_blue_shulker_box

data modify block 17112022 1 0 Items append from storage dsb:temp temp[0].item
loot spawn ~ ~ ~ mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
data modify block 17112022 1 0 Items append from storage dsb:temp temp[1].item
loot spawn ~ ~ ~ mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
data modify block 17112022 1 0 Items append from storage dsb:temp temp[2].item
loot spawn ~ ~ ~ mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
data modify block 17112022 1 0 Items append from storage dsb:temp temp[3].item
loot spawn ~ ~ ~ mine 17112022 1 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 1 0 minecraft:air
###


$data remove storage dsb:cts Libraries[{UUID:$(out)}]
$kill @e[type=minecraft:interaction, tag=$(out)]
$kill @e[type=minecraft:item_display, tag=$(out)]