$data modify storage dsb:displays SlotItem set from storage dsb:cauldrons_tea $(out).items[0]
$execute store result storage dsb:displays Count1 int 1 run data get storage dsb:cauldrons_tea $(out).items[0].count
#В зависимости от направления постройки в разные стороны смотреть будет
execute if entity @s[tag=SN] positioned ~-0.2 ~1.65 ~ summon minecraft:item_display run function food:cauldron/vizual/on_item with storage dsb:displays
execute if entity @s[tag=WE] positioned ~ ~1.65 ~-0.2 summon minecraft:item_display run function food:cauldron/vizual/on_item with storage dsb:displays



$data modify storage dsb:displays SlotItem set from storage dsb:cauldrons_tea $(out).items[1]
$execute store result storage dsb:displays Count1 int 1 run data get storage dsb:cauldrons_tea $(out).items[1].count

execute if entity @s[tag=SN] positioned ~0.2 ~1.65 ~ summon minecraft:item_display run function food:cauldron/vizual/on_item with storage dsb:displays
execute if entity @s[tag=WE] positioned ~ ~1.65 ~0.2 summon minecraft:item_display run function food:cauldron/vizual/on_item with storage dsb:displays