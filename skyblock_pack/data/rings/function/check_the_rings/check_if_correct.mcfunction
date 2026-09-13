#Шалкер для выдачи лишних предметов
setblock 17112023 255 0 light_blue_shulker_box

#Проверяем каждый слот на правильность расположения в нем артефакта. Если не правильно - возвращаем стекло и предмет
execute unless data storage dsb:temp Inventory[{Slot:10b,components:{"minecraft:custom_data":{Amulet:1b}}}] run function rings:return_incorrect_item {Slot:10,inv:1}
execute unless data storage dsb:temp Inventory[{Slot:11b,components:{"minecraft:custom_data":{Ring:1b}}}] run function rings:return_incorrect_item {Slot:11,inv:2}

execute if entity @s[tag=WearingRingOfAdvancedGUI] unless data storage dsb:temp Inventory[{Slot:12b,components:{"minecraft:custom_data":{Ring:1b}}}] run function rings:return_incorrect_item {Slot:12,inv:3}
execute if entity @s[tag=WearingRingOfAdvancedGUI] unless data storage dsb:temp Inventory[{Slot:13b,components:{"minecraft:custom_data":{Ring:1b}}}] run function rings:return_incorrect_item {Slot:13,inv:4}

#Позволяет заспавнить выброшенные игроком предметы в самом игроке
loot spawn ~ ~ ~ mine 17112023 255 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
setblock 17112023 255 0 air