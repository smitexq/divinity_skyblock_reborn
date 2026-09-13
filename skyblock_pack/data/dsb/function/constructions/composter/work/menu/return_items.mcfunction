#Очищаем в инвентаре игроков и предмет на земле
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{null:1b}}}}]
clear @a *[minecraft:custom_data~{null:1b}]

setblock 17112022 0 0 minecraft:light_blue_shulker_box

#Копируем предметы в шалкер, очищая слоты для растений и слот результата, чтобы вернуть предметы, которые положили вместо стекла
data modify storage dsb:cts Temp set from entity @s Items
data remove storage dsb:cts Temp[{components:{"minecraft:custom_data":{null:1b}}}]
data remove storage dsb:cts Temp[{Slot:2b}]
data remove storage dsb:cts Temp[{Slot:10b}]
data remove storage dsb:cts Temp[{Slot:11b}]
data remove storage dsb:cts Temp[{Slot:12b}]
data remove storage dsb:cts Temp[{Slot:16b}]
data remove storage dsb:cts Temp[{Slot:20b}]

data modify block 17112022 0 0 Items set from storage dsb:cts Temp
loot spawn ~ ~2.2 ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 0 0 minecraft:air

#Возвращаем меню старотовое
data modify entity @s Items append from storage dsb:cts Composter.StartMenu[]

#Устанавливаем новое значение для отображения кол-ва растительности и прогресс взращивания земли
$function dsb:constructions/composter/work/menu/set_string_count with storage dsb:cts Composter.$(out)