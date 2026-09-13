setblock 17112022 0 0 minecraft:light_blue_shulker_box{Items:[{Slot:0b, id:"minecraft:cobblestone", count:1}]}


#Устанавливаем булыжник из хранилище (если там не 0)
$data modify block 17112022 0 0 Items[0].count set from storage dsb:cts Cauldron.$(out).itemCount
$execute unless data storage dsb:cts Cauldron.$(out){itemCount:0} run loot spawn ~ ~1 ~ mine 17112022 0 0 minecraft:stick[minecraft:custom_data={drop_contents:true}]

setblock 17112022 0 0 minecraft:air

#Удаляем хранилище сущности
$data remove storage dsb:cts Cauldron.$(out)
#удаляем все отображения
$kill @e[type=#food:display,tag=$(out)]