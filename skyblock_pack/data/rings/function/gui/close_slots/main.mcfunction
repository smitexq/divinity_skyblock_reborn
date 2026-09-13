#Очищаем кнопку закрытия меню и снимаем с игрока тег
clear @s black_stained_glass_pane[minecraft:custom_data~{open_rings_slots:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",components:{"minecraft:custom_data":{open_rings_slots:1b}}}}]

tag @s remove OpennedGUIRings

#Возвращаем предмет, если его положили вместо кнопки
setblock 17112023 255 0 light_blue_shulker_box
data modify block 17112023 255 0 Items append from entity @s Inventory[{Slot:9b}]
loot spawn ~ ~ ~ mine 17112023 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

#Возвращаем кнопку открытия меню
function rings:api/return_open_gui_button

#Узнаем UUID игрока для записи его предеметов в хранилище
function dc:gu/generate


#Записываем артефакты в хранилище
function rings:gui/close_slots/store_rings with storage gu:main

#Достаем предметы (возвращаем)
function rings:gui/close_slots/get_items with storage gu:main

advancement revoke @s only rings:inventory_changed
setblock 17112023 255 0 air