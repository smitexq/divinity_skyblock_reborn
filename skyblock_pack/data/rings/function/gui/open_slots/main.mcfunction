#Очищаем кнопку открытия меню и добавляем игроку тег
clear @s black_stained_glass_pane[minecraft:custom_data~{open_rings_slots:1b}]
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",components:{"minecraft:custom_data":{open_rings_slots:1b}}}}]

tag @s add OpennedGUIRings

#Возвращаем предмет, если его положили вместо кнопки
setblock 17112023 255 0 light_blue_shulker_box
data modify block 17112023 255 0 Items append from entity @s Inventory[{Slot:9b}]
loot spawn ~ ~ ~ mine 17112023 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

#Возвращаем кнопку закрытия меню
function rings:api/return_close_gui_button


#Узнаем UUID игрока для записи его предеметов в хранилище
function dc:gu/generate

#Если игрок имеет кольцо с расширением слотов, то записываем другие предметы. Иначе команды ниже
function rings:gui/open_slots/store_items with storage gu:main

#Достаем кольца и амулет и забираем достижение
function rings:gui/open_slots/get_rings with storage gu:main

advancement revoke @s only rings:inventory_changed
#Убираем временное хранилище
setblock 17112023 255 0 air