#Удаляем тег
tag @s remove WearingRingOfAdvancedGUI
playsound minecraft:entity.breeze.wind_burst ambient @s ~ ~ ~ 0.8 1.5
#Шалкер для возврата предметов
setblock 17112023 255 0 light_blue_shulker_box

#Записываем предметы из 2-х доп.слотов в шалкер, при этом удаляем из него фоновое стекло
data modify block 17112023 255 0 Items append from storage dsb:temp PlayerRingsGUI[{Slot:12b}]
data modify block 17112023 255 0 Items append from storage dsb:temp PlayerRingsGUI[{Slot:13b}]
data remove block 17112023 255 0 Items[{components:{"minecraft:custom_data":{accessories_font:1b}}}]
#И возвращаем предметы (аксессуары) игроку
loot spawn ~ ~ ~ mine 17112023 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

#Вместо этих доп.слотов помещаем предметы из инвентаря игрока (до увеличения слотов)
data remove block 17112023 255 0 Items
$data modify block 17112023 255 0 Items append from storage dsb:rings $(out).SaveInventory[{Slot:12b}]
$data modify block 17112023 255 0 Items append from storage dsb:rings $(out).SaveInventory[{Slot:13b}]
item replace entity @s inventory.3 from block 17112023 255 0 container.12
item replace entity @s inventory.4 from block 17112023 255 0 container.13

#Убираем шалкер
setblock 17112023 255 0 air


#Так как кольца расширений больше нет - удаляем 2 доп.слота из хранилища
data remove storage dsb:temp PlayerRingsGUI[{Slot:12b}]
data remove storage dsb:temp PlayerRingsGUI[{Slot:13b}]

#Возвращаем кнопку закрытия меню
function rings:api/return_close_gui_button