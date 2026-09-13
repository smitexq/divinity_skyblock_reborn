#Узнаем сам предмет и его количество
$data modify storage dsb:displays SlotItem set from storage dsb:cauldrons_tea $(out).items[0]
$execute store result storage dsb:displays Count1 int 1 run data get storage dsb:cauldrons_tea $(out).items[0].count

execute positioned ~ ~1.65 ~ summon minecraft:item_display run function food:cauldron/vizual/on_item with storage dsb:displays