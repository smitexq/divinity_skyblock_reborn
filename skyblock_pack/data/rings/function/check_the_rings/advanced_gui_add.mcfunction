#Добавляем тег
tag @s add WearingRingOfAdvancedGUI
particle glow ~ ~1 ~ 0.5 0.4 0.5 3 10
playsound minecraft:block.ender_chest.open ambient @s

#Удаляем старое значение (если оно было) того, что было в инвентаре
$data remove storage dsb:rings $(out).SaveInventory[{Slot:12b}]
$data remove storage dsb:rings $(out).SaveInventory[{Slot:13b}]
#И записываем новые предметы в хранилище, так как эти предметы будут заменены на фоновое стекло
$data modify storage dsb:rings $(out).SaveInventory append from entity @s Inventory[{Slot:12b}]
$data modify storage dsb:rings $(out).SaveInventory append from entity @s Inventory[{Slot:13b}]


execute if entity @s[tag=!OpennedGUIRings] run return 0 
#Возвращаем кнопку закрытия меню
function rings:api/return_close_gui_button

#Помещаем фоновое стекло
item replace entity @s inventory.3 with gray_stained_glass_pane[minecraft:custom_data={accessories_font:1b}, minecraft:item_model="dsb:empty", minecraft:hide_tooltip={}]
item replace entity @s inventory.4 with gray_stained_glass_pane[minecraft:custom_data={accessories_font:1b}, minecraft:item_model="dsb:empty", minecraft:hide_tooltip={}]