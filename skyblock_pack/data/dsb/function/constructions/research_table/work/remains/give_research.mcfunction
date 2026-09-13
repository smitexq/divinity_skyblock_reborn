###Возврат предметов
setblock 17112022 0 0 minecraft:light_blue_shulker_box

item replace block 17112022 0 0 container.0 from block ~ ~ ~ container.16
execute at @s run loot spawn ~ ~1.3 ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]
###

#Рецепт выдаем пустой
data remove block 17112022 0 0 Items
loot insert 17112022 0 0 loot dsb:items/used/research

###Выставляем описание предмету
#Сопоставляем id
data modify block 17112022 0 0 Items[0].components."minecraft:custom_data".id set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".id
#Сопоставляем tier для интеллекта
data modify block 17112022 0 0 Items[0].components."minecraft:custom_data".tier_ai set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".tier_ai
#Имя
data modify block 17112022 0 0 Items[0].components."minecraft:custom_name" set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_name"
#Описание
function dsb:constructions/research_table/work/remains/set_lore
###

#Меняем слот на 16
data modify block 17112022 0 0 Items[0].Slot set value 16b

#Копируем его в бочку
item replace block ~ ~ ~ container.16 with minecraft:command_block
data modify block ~ ~ ~ Items[{Slot:16b}] set from block 17112022 0 0 Items[0]



setblock 17112022 0 0 minecraft:air