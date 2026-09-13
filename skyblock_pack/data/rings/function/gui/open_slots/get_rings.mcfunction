#Очищаем шалкер
data remove block 17112023 255 0 Items

#Если в хранилище с кольцами нет фоновых стекол, то дополняем
$execute unless data storage dsb:rings $(out).SaveRings[{Slot:10b}] run data modify storage dsb:rings $(out).SaveRings append value {Slot:10b,id:"minecraft:gray_stained_glass_pane",Count:1b,components:{"minecraft:custom_data":{accessories_font:1b}, "minecraft:item_model":"dsb:empty", "minecraft:hide_tooltip": {}}}
$execute unless data storage dsb:rings $(out).SaveRings[{Slot:11b}] run data modify storage dsb:rings $(out).SaveRings append value {Slot:11b,id:"minecraft:gray_stained_glass_pane",Count:1b,components:{"minecraft:custom_data":{accessories_font:1b}, "minecraft:item_model":"dsb:empty", "minecraft:hide_tooltip": {}}}
$execute unless data storage dsb:rings $(out).SaveRings[{Slot:12b}] run data modify storage dsb:rings $(out).SaveRings append value {Slot:12b,id:"minecraft:gray_stained_glass_pane",Count:1b,components:{"minecraft:custom_data":{accessories_font:1b}, "minecraft:item_model":"dsb:empty", "minecraft:hide_tooltip": {}}}
$execute unless data storage dsb:rings $(out).SaveRings[{Slot:13b}] run data modify storage dsb:rings $(out).SaveRings append value {Slot:13b,id:"minecraft:gray_stained_glass_pane",Count:1b,components:{"minecraft:custom_data":{accessories_font:1b}, "minecraft:item_model":"dsb:empty", "minecraft:hide_tooltip": {}}}

#Закидываем в шалкер все кольца
$data modify block 17112023 255 0 Items set from storage dsb:rings $(out).SaveRings

#Поочередно вставляем кольца в слоты (или фоновое стекло)
item replace entity @s inventory.1 from block 17112023 255 0 container.10
item replace entity @s inventory.2 from block 17112023 255 0 container.11
item replace entity @s[tag=WearingRingOfAdvancedGUI] inventory.3 from block 17112023 255 0 container.12
item replace entity @s[tag=WearingRingOfAdvancedGUI] inventory.4 from block 17112023 255 0 container.13